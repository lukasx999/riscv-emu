#!/bin/sh
set -euxo pipefail

riscv64-linux-gnu-as -gdwarf-5 test.asm -o test.o
riscv64-linux-gnu-ld test.o -o bin-asm
~/opt/riscv64/bin/riscv64-unknown-elf-gcc -march=rv64i test.c -o bin-c -O0
riscv64-elf-objdump -dC --disassembler-options=no-aliases bin-c > dis.s
qemu-riscv64 bin-asm
