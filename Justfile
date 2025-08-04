configure:
    cmake -B build -GNinja -DCMAKE_CXX_COMPILER=clang++

build: configure
    cmake --build build

run: build
    ./build/riscv-emu ./probe/bin-asm -v

time: build
    time ./build/riscv-emu ./probe/bin-asm

repl: build
    ./build/riscv-emu :repl

test: build
    ctest --test-dir ./build/

rerun:
    ctest --test-dir ./build/ --rerun-failed --output-on-failure
