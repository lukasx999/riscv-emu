cmake_minimum_required(VERSION 3.16)

set(CMAKE_CXX_COMPILER "clang++")
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -pedantic -O0 -ggdb -fsanitize=address,undefined -fdiagnostics-color=always")

project(RiscvEmu)

list(APPEND sources cpu.cc decoder.cc elf.cc machine.cc memory.cc)

add_executable(riscv-emu main.cc ${sources})



Include(FetchContent)
FetchContent_Declare(Catch2 GIT_REPOSITORY https://github.com/catchorg/Catch2.git GIT_TAG v3.8.1)
FetchContent_MakeAvailable(Catch2)

add_executable(tests test.cc ${sources})
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain)

include(CTest)
include(Catch)
catch_discover_tests(tests)
