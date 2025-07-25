#!/bin/sh
set -euxo pipefail

riscv64-linux-gnu-as test.asm -o test.o
riscv64-linux-gnu-ld test.o
qemu-riscv64 a.out
