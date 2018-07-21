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

#pragma once

#include "../pmemkv.h"
#include "art.h"


using pmem::obj::p;
using pmem::obj::persistent_ptr;
using pmem::obj::make_persistent;
using pmem::obj::transaction;
using pmem::obj::delete_persistent;
using pmem::obj::pool;

namespace pmemkv {
namespace woart {

const string ENGINE = "woart";                         // engine identifier



struct KVRoot {                                            // persistent root object
    int magic_number;
};


class Woart : public KVEngine {
  public:
    Woart(const string& path, size_t size);                                           // default constructor
    ~Woart();                                          // default destructor

    string Engine() final { return ENGINE; }               // engine identifier
    KVStatus Get(int32_t limit,                            // copy value to fixed-size buffer
                 int32_t keybytes,
                 int32_t* valuebytes,
                 const char* key,
                 char* value) final;
    KVStatus Get(const string& key,                        // append value to std::string
                 string* value) final;
    KVStatus Put(const string& key,                        // copy value from std::string
                 const string& value) final;
    KVStatus Remove(const string& key) final;              // remove value for key
  private:
    Woart(const Woart&);                                 // prevent copying
    void operator=(const Woart&);                         // prevent assigning
    //vector<persistent_ptr<KVLeaf>> leaves_prealloc;        // persisted but unused leaves
    //const string pmpath;                                   // path when constructed
    pool<KVRoot> pmpool;                                   // pool for persistent root
    //unique_ptr<KVNode> tree_top;                           // pointer to uppermost inner node    
    art_tree root;
};

} // namespace Woart
} // namespace pmemkv
