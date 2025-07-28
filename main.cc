#include <cassert>
#include <cstdlib>

#include "elf.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

// ../configure --enable-languages=c,c++ --prefix=/home/lukas/opt/riscv64 --target=riscv64-elf --with-arch=rv64i --with-abi=lp64

int main() {

    try {
        // TODO: destroy after loading (or just mmap read only)
        ElfExecutable elf("./probe/bin");

        Machine machine(elf);
        machine.run();

    } catch (ElfExcecutableException e) {
        std::println(stderr, "Failed to parse binary: {}", e.what());

    } catch (DecodingException e) {
        std::println(stderr, "Failed to decode instruction: {}", e.what());

    } catch (MemoryException e) {
        std::println(stderr, "Memory failure: {}", e.what());

    }

    return EXIT_SUCCESS;
}
