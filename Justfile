configure:
    cmake -B build -GNinja -DCMAKE_CXX_COMPILER=clang++

build: configure
    cmake --build build

run: build
    ./build/riscv-emu ./probe/bin-asm -v

test: build
    ctest --test-dir ./build/

rerun:
    ctest --test-dir ./build/ --rerun-failed --output-on-failure
