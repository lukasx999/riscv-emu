# riscv-emu

Linux Userspace emulator for RV64I ELF binaries.

## Build Instructions

### Requirements

- C++23 Toolchain (tested on gcc/clang)
- CMake
- Ninja (optional, for faster builds)
- Just (optional, for more convenient running of builds/tests)

### Build

```console
cmake -B build && cmake --build build
```

#### Faster builds with [Ninja](https://github.com/ninja-build/ninja)

```console
cmake -B build -GNinja && cmake --build build
```

### Running the Test Suite

```console
ctest --test-dir ./build
```

### With [Just](https://github.com/casey/just):

```console
just build
just test
```

### Developer Resources

- [RISCV Cheat Sheet](https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf)
- [RISCV Cheat Sheet 2](https://projectf.io/posts/riscv-cheat-sheet/)
- [RISCV Instruction Documentation](https://msyksphinz-self.github.io/riscv-isadoc/#_rv32i_rv64i_instructions)
- [RISCV Instruction Documentation 2](https://msyksphinz-self.github.io/riscv-isadoc/html/index.html)
- [RISCV Linux Syscalls](https://jborza.com/post/2021-05-11-riscv-linux-syscalls/)
- [RISCV Overview Slides](http://www.ee.ic.ac.uk/pcheung/teaching/eie2-iac/Lecture%206%20-%20RISC-V%20Instruction%20Set%20Overview%20(notes).pdf)
- [RISCV Official ISA Documentation](https://drive.google.com/file/d/1uviu1nH-tScFfgrovvFCrj7Omv8tFtkp/view)

#### Building Crosscompiler for RV64I

```console
git clone --depth 1 https://github.com/riscv-collab/riscv-gnu-toolchain.git
./configure --prefix=<your_prefix> --with-arch=rv64i --with-abi=lp64
make -j$(nproc)
```
