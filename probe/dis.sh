#!/bin/sh
set -euxo pipefail

dis() {
    riscv64-elf-objdump -dC --disassembler-options=no-aliases $1 > "$1.s"
}

dis bin-asm
dis bin-c
