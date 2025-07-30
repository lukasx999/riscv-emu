# riscv-emu

Userspace emulator for RV64I ELF binaries.

## Build Instructions

### Build

```console
cmake -B build && cmake --build build
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
