configure:
    cmake -B build -GNinja

build: configure
    cmake --build build

run: build
    ./build/riscv-emu ./probe/bin-asm

test: build
    ctest --test-dir ./build
