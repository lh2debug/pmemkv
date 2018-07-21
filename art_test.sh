#!/bin/bash
cd /root/lab505/app_source/pmemkv_with_woart
./pmemkv_bench --engine=woart --value_size=100 > test_woart_100
./pmemkv_bench --engine=woart --value_size=1024 > test_woart_1024
./pmemkv_bench --engine=woart --value_size=2048 > test_woart_2048
./pmemkv_bench --engine=woart --value_size=4096 > test_woart_4096
./pmemkv_bench --engine=woart --value_size=8192 > test_woart_8192
./pmemkv_bench --engine=woart --value_size=16384 > test_woart_16384
./pmemkv_bench --engine=woart --value_size=32768 > test_woart_32768
mkdir woart_test
mv test_woart_* woart_test
tar cvf woart_test.tar woart_test
