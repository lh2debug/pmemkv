/*
 * Copyright 2017-2018, Intel Corporation
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in
 *       the documentation and/or other materials provided with the
 *       distribution.
 *
 *     * Neither the name of the copyright holder nor the names of its
 *       contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <iostream>
#include "woart.h"
#include <cstring>
#include <cstdlib>
#include <algorithm>
#include <cassert>
#include <list>
#include <unistd.h>

using std::cout;
using std::endl;

#define DO_LOG 0
#define LOG(msg) if (DO_LOG) std::cout << "[woart] " << msg << "\n"

namespace pmemkv {
namespace woart {

Woart::Woart(const string& path, const size_t size) {
    int res = art_tree_init(&root);
    if (path.find("/dev/dax") == 0) {
        LOG("Opening device dax pool, path=" << path);
        pmpool = pool<KVRoot>::open(path.c_str(), LAYOUT);
    } else if (access(path.c_str(), F_OK) != 0) {
        LOG("Creating filesystem pool, path=" << path << ", size=" << to_string(size));
        pmpool = pool<KVRoot>::create(path.c_str(), LAYOUT, size, S_IRWXU);
    } else {
        LOG("Opening filesystem pool, path=" << path);
        pmpool = pool<KVRoot>::open(path.c_str(), LAYOUT);
    }
    if (res==0)
        LOG("Opened ok");
    else 
        LOG("Open operation failed");
}

Woart::~Woart() {
    int res = art_tree_destroy(&root);
    pmpool.close();
    if (res==0)
        LOG("Closed ok");
    else
        LOG("Close operation failed");
}

KVStatus Woart::Get(const int32_t limit, const int32_t keybytes, int32_t* valuebytes,
                        const char* key, char* value) { 
    //uintptr_t val = (uintptr_t)art_search(&root, (unsigned char*)(key), strlen(key));                           
    LOG("Get for key=" << key);
    return NOT_FOUND;
}

//ok
KVStatus Woart::Get(const string& key, string* value) {
    LOG("Get for key=" << key.c_str());
    void* line = art_search(&root, (unsigned char*)(key.c_str()), (int)(key.size()));
    if (line == NULL) 
        return NOT_FOUND;
    else {
        persistent_ptr<char[]>* ptr = (persistent_ptr<char[]>*)line;
        value->append((char*)ptr->get());
        return OK;
    }
}


KVStatus Woart::Put(const string& key, const string& value) {
    persistent_ptr<char[]>* line;
    transaction::exec_tx(pmpool, [&]{
        line  = new persistent_ptr<char[]>();
        size_t mysize = (size_t)(value.size()+1);
        *line = make_persistent<char[]>(mysize);
        char* kvptr = line->get();
        memcpy(kvptr, value.c_str(), value.size()+1);
    });

    void* retline = (char*)art_insert(&root, (unsigned char*)(key.c_str()), (int)(key.size()), (void*)line);
    //char* line = (char*)malloc(value.size()+1);
    //strcpy(line, value.c_str());
    if (retline != NULL){
        persistent_ptr<char[]>* tmp;
        transaction::exec_tx(pmpool, [&]{
            tmp = (persistent_ptr<char[]>*)(retline);
            char* tmp_kvptr = tmp->get();
            size_t mysize = (size_t)(strlen(tmp_kvptr)+1);
            delete_persistent<char[]>(*tmp, mysize);
        });
    }
    LOG("Put key=" << key.c_str() << ", value.size=" << to_string(value.size()));
    return OK;
}


KVStatus Woart::Remove(const string& key) {
    void* line = art_delete(&root, (unsigned char*)(key.c_str()), (int)(key.size()));
    if (line != NULL){
        persistent_ptr<char[]>* tmp;
        transaction::exec_tx(pmpool, [&]{
            tmp = (persistent_ptr<char[]>*)(line);
            char* tmp_kvptr = tmp->get();
            size_t mysize = (size_t)(strlen(tmp_kvptr)+1);
            delete_persistent<char[]>(*tmp, mysize);
        });
    }
    //free(val);
    LOG("Remove key=" << key.c_str());
    return OK;
}

} // namespace Woart
} // namespace pmemkv
