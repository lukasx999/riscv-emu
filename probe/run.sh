#!/bin/sh
set -euxo pipefail

riscv64-linux-gnu-as test.asm -o test.o
riscv64-linux-gnu-ld test.o -o bin-asm
~/opt/riscv64/bin/riscv64-unknown-elf-gcc -march=rv64i test.c -o bin-c
qemu-riscv64 bin-asm
