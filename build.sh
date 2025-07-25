#!/bin/sh
set -euxo pipefail

clang++ main.cc -Wall -Wextra -std=c++23 -pedantic -Og -ggdb -o riscv-emu
./riscv-emu
