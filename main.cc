#include <cassert>
#include <cstdlib>

#include "elf.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

// TODO: proper error handling
// TODO: unit testing

int main() {

    try {

        ElfExecutable elf("./probe/a.out");
        Machine machine;
        machine.load_binary(elf);
        machine.test();
        machine.run();

    } catch (ElfExcecutableException exc) {
        std::println(stderr, "Failed to parse binary: {}", exc.what());
    }

    return EXIT_SUCCESS;
}
