#!/bin/sh
set -euxo pipefail

riscv64-elf-objdump -dC a.out --disassembler-options=no-aliases
