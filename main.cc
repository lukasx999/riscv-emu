#include <cassert>
#include <cstdlib>
#include <sys/mman.h>

#include "elf.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

// TODO: unit testing

int main() {

    // TODO: map binary into host virtual memory using mmap()

    try {
        ElfExecutable elf("./probe/a.out");

        auto segm = elf.get_loadable_segments().front();
        auto* mem = mmap(std::bit_cast<void*>(segm.m_virt_addr), segm.m_span.size(),
             PROT_EXEC | PROT_READ, MAP_FIXED | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
        assert(mem != MAP_FAILED);
        return 0;

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
