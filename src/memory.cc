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

        // segment address may be unaligned, therefore we make the segments a bit
        // larger to make mmap() happy
        // #   *    #        #        #
        // ^   ^ p_vaddr
        // |
        // page boundary (4096)

        int page_size = getpagesize();
        size_t aligned_addr = segment.virt_addr & ~(page_size-1);
        size_t aligned_size = segment.bytes.size() + (segment.virt_addr & (page_size-1));

        // NOTE: anonymous page will be zero-initialized, so bss section doesn't need to be explicitly zeroed
        void* addr = mmap(
            reinterpret_cast<void*>(aligned_addr),
            aligned_size,
            PROT_READ | PROT_WRITE,
            // TODO: we only need MAP_FIXED_NOREPLACE for ET_EXEC, not for ET_DYN, as ET_DYN is already relative
            MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
            -1,
            0
        );

        if (addr == MAP_FAILED) {
            std::println(stderr, "Failed to map segment: {}", strerror(errno));
            exit(EXIT_FAILURE);
        }

        m_mapped_segments.push_back({addr, aligned_size});

        // TODO: map with offset into elf file, so we dont have to memcpy() and mprotect()
        // but this requires rewriting a lot of code in memory.hh and elf.hh
        std::memcpy(
            reinterpret_cast<void*>(segment.virt_addr),
            segment.bytes.data(),
            segment.bytes.size()
        );

        int err = mprotect(addr, aligned_size, elf_prot_to_mman_prot(segment.flags));

        if (err == -1) {
            std::println(stderr, "Failed to change segment page protection: {}", strerror(errno));
            exit(EXIT_FAILURE);
        }

        log("Loaded segment with address {:#x} ({} bytes)", aligned_addr, aligned_size);
    }

    log("{} Segment(s) loaded", elf.get_load_segments().size());
}
