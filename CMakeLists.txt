cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_COMPILER "clang++")
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -pedantic -O0 -ggdb -fsanitize=address,undefined")

project(RiscvEmu)

add_executable(riscv-emu main.cc)
