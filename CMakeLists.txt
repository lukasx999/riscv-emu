cmake_minimum_required(VERSION 3.16)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -pedantic -O0 -ggdb -fsanitize=address,undefined")
set(CMAKE_COLOR_DIAGNOSTICS ON)

project(RiscvEmu)

list(APPEND sources util.cc cpu.cc decoder.cc elf.cc machine.cc memory.cc)
list(APPEND libs boost_process readline)

add_executable(riscv-emu main.cc ${sources})
target_link_libraries(riscv-emu PRIVATE ${libs})

Include(FetchContent)

FetchContent_Declare(Catch2 GIT_REPOSITORY https://github.com/catchorg/Catch2.git GIT_TAG v3.8.1)
FetchContent_Declare(Argparse GIT_REPOSITORY https://github.com/p-ranav/argparse.git GIT_TAG v3.2)
FetchContent_MakeAvailable(Argparse Catch2)

include_directories(${argparse_SOURCE_DIR}/include)

include(CTest)
include(Catch)

add_executable(tests test.cc ${sources})
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain ${libs})

catch_discover_tests(tests)
