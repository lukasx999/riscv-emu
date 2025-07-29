#include <cassert>
#include <cstdlib>

#include "elf.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

// Building crosscompiler for rv64i
// https://github.com/riscv-collab/riscv-gnu-toolchain
// ./configure --prefix=/home/lukas/opt/riscv64 --with-arch=rv64i --with-abi=lp64
// make -j$(nproc)

int main() try {

    // TODO: destroy after loading (or just mmap read only)
    ElfExecutable elf("./probe/bin-c");
    Machine machine(elf);
    machine.run();
    return EXIT_SUCCESS;

} catch (ElfExcecutableException e) {
    std::println(stderr, "Failed to parse binary: {}", e.what());
    return EXIT_FAILURE;

} catch (DecodingException e) {
    std::println(stderr, "Failed to decode instruction: {}", e.what());
    return EXIT_FAILURE;

} catch (MemoryException e) {
    std::println(stderr, "Memory failure: {}", e.what());
    return EXIT_FAILURE;

}
