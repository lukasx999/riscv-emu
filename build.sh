#!/bin/sh
set -euxo pipefail

clang++ main.cc -Wall -Wextra -std=c++23 -pedantic -O0 -ggdb -o riscv-emu
./riscv-emu
