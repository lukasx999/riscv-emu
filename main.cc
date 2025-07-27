#include <cassert>
#include <cstdlib>

#include "elf.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

// TODO: unit testing

int main() {

    try {
        ElfExecutable elf("./probe/a.out");

        Machine machine;
        machine.load_binary(elf);
        machine.test();
        machine.run();

    } catch (ElfExcecutableException e) {
        std::println(stderr, "Failed to parse binary: {}", e.what());
    } catch (DecodingException e) {
        std::println(stderr, "Failed to decode instruction: {}", e.what());
    }

    return EXIT_SUCCESS;
}
