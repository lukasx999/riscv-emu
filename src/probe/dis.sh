#!/bin/sh
set -euxo pipefail

riscv64-elf-objdump -dC --disassembler-options=no-aliases bin-asm
