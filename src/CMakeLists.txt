cmake_minimum_required(VERSION 3.16)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -pedantic -O0 -ggdb -fsanitize=address,undefined -std=c++23")
set(CMAKE_COLOR_DIAGNOSTICS ON)
set(FETCHCONTENT_QUIET FALSE)

option(FEATURE_REPL "enable REPL feature" OFF)

project(RiscvEmu)

Include(FetchContent)

list(APPEND sources util.cc cpu.cc decoder.cc elf.cc machine.cc memory.cc)
list(APPEND libs Boost::process)

if(FEATURE_REPL)
    list(APPEND libs readline)
    list(APPEND sources repl.cc)
    add_compile_definitions(FEATURE_REPL)
endif()

FetchContent_Declare(Boost GIT_REPOSITORY https://github.com/boostorg/boost.git GIT_TAG boost-1.89.0 GIT_SHALLOW ON)
FetchContent_Declare(Catch2 GIT_REPOSITORY https://github.com/catchorg/Catch2.git GIT_TAG v3.8.1)
FetchContent_Declare(Argparse GIT_REPOSITORY https://github.com/p-ranav/argparse.git GIT_TAG v3.2)

# include(ExternalProject)
# ExternalProject_Add(Readline GIT_REPOSITORY https://https.git.savannah.gnu.org/git/readline.git GIT_TAG readline-8.3
# CONFIGURE_COMMAND "./configure --prefix=${CMAKE_CURRENT_SOURCE_DIR}/build/_deps/readline-build"
# BUILD_COMMAND "make"
# BUILD_IN_SOURCE ON
# )

FetchContent_MakeAvailable(Boost Argparse Catch2)

# EXECUTABLE
add_executable(riscv-emu main.cc ${sources})
target_link_libraries(riscv-emu PRIVATE ${libs})

# TESTS
include_directories(${argparse_SOURCE_DIR}/include)
include(CTest)
include(Catch)
add_executable(tests test.cc ${sources})
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain ${libs})
catch_discover_tests(tests)
