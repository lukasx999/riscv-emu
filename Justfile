configure:
    cmake -B build -GNinja

build: configure
    cmake --build build

run: build
    ./build/riscv-emu

test: build
    ctest --test-dir ./build
