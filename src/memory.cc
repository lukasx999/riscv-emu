#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <numeric>
#include <vector>

#include <sys/mman.h>
#include <unistd.h>

#include "elf.hh"
#include "util.hh"
#include "memory.hh"

Memory::~Memory() {
    // TODO: check for munmap errors
    for (auto& [address, size] : m_mapped_segments)
        munmap(address, size);

    munmap(m_stack_addr, m_stack_size);
}

void Memory::map_stack() {
    m_stack_addr = mmap(
        nullptr,
        m_stack_size,
        PROT_READ | PROT_WRITE,
        MAP_ANONYMOUS | MAP_PRIVATE | MAP_STACK,
        -1,
        0
    );

    if (m_stack_addr == MAP_FAILED) {
        log("failed to map stack: {}", strerror(errno));
        exit(EXIT_FAILURE);
    }

    log("Stack placed at {}", m_stack_addr);
    log("Stack Size: {}", m_stack_size);
}

int Memory::elf_prot_to_mman_prot(int elf_prot) {
    int mman_prot = PROT_NONE;

    if (elf_prot & PF_R)
        mman_prot |= PROT_READ;

    if (elf_prot & PF_W)
        mman_prot |= PROT_WRITE;

    if (elf_prot & PF_X)
        mman_prot |= PROT_EXEC;

    return mman_prot;
}

void Memory::load_binary(const ElfExecutable& elf) {

    for (const auto& segment : elf.get_load_segments()) {

        log("Mapping segment {:#x}", segment.virt_addr);

        // snap address to page boundary, mmap() requires aligned addresses
        size_t aligned_addr = align_to_page_size(segment.virt_addr);
        // add the rest that was cut off back to the end of the page
        size_t aligned_size = segment.length + segment.virt_addr % getpagesize();

        // TODO:
        // we only need MAP_FIXED_NOREPLACE for ET_EXEC, not for ET_DYN, as ET_DYN is relative
        // but for that the address space needs to be mapped contiguously and setting the entry point must account for the base address from mmap()
        // MAP_ANONYMOUS | MAP_PRIVATE | (elf.get_type() == ET_EXEC ? MAP_FIXED_NOREPLACE : 0),

        // TODO: bss section needs to be mapped anonymously
        void* addr = mmap(
            reinterpret_cast<void*>(aligned_addr),
            aligned_size,
            elf_prot_to_mman_prot(segment.flags),
            MAP_PRIVATE | MAP_FIXED_NOREPLACE,
            elf.get_fd(),
            segment.file_offset
        );

        if (addr == MAP_FAILED) {
            std::println(stderr, "Failed to map segment at {:#x}: {}", aligned_addr, strerror(errno));
            exit(EXIT_FAILURE);
        }

        m_mapped_segments.push_back({addr, aligned_size});

        log("Loaded segment with address {:#x} ({} bytes)", aligned_addr, aligned_size);
    }

    log("{} Segment(s) loaded", elf.get_load_segments().size());
}
