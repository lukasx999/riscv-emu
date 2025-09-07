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
        MAP_ANONYMOUS | MAP_PRIVATE,
        -1,
        0
    );
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

void Memory::load_binary() {

    for (const auto& segment : m_segments) {

        log("mapping segment {:#x}", segment.virt_addr);

        // segment address may be unaligned, therefore we make the segments a bit
        // larger to make mmap() happy
        // #   *    #        #        #
        // ^   ^ p_vaddr
        // |
        // page boundary (4096)

        // TODO:
        // int page_size = getpagesize();
        size_t aligned_addr = segment.virt_addr & ~0xfff;
        size_t segment_size = segment.bytes.size() + (segment.virt_addr & 0xfff);

        void* addr = mmap(
            reinterpret_cast<void*>(aligned_addr),
            segment_size,
            PROT_READ | PROT_WRITE,
            MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
            -1,
            0
        );

        if (addr == MAP_FAILED) {
            log("failed to map segment: {}", strerror(errno));
            exit(1);
        }

        m_mapped_segments.push_back({addr, segment_size});

        // TODO: map with offset into elf file, so we dont have to memcpy() and mprotect()
        // but this requires rewriting a lot of code in memory.hh and elf.hh
        std::memcpy(
            reinterpret_cast<void*>(segment.virt_addr),
            segment.bytes.data(),
            segment.bytes.size()
        );

        int err = mprotect(addr, segment_size, elf_prot_to_mman_prot(segment.flags));

        if (err == -1) {
            log("failed to change segment page protection: {}", strerror(errno));
            exit(1);
        }

        log("Loaded segment with address {:#x} ({} bytes)",
            segment.virt_addr, segment.bytes.size());
    }

    log("Stack Size: {}", m_stack_size);
    log("{} Segment(s) loaded", m_segments.size());
}
