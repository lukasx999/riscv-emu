#!/bin/sh
set -euxo pipefail

riscv64-linux-gnu-as test.asm -o test.o
riscv64-linux-gnu-ld test.o -o bin-asm
rm test.o
riscv64-linux-gnu-g++ test.cc -o bin-cpp
riscv64-linux-gnu-gcc test.c -o bin-c
qemu-riscv64 bin-asm
