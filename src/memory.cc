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
    for (auto& segment : m_segments)
        munmap(reinterpret_cast<void*>(segment.virt_addr), segment.bytes.size());

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

        // BUG: page address may be unaligned
        // FIX: segment.virt_addr & ~0xfff, but we have to add the stripped offset later (+ (addr & 0xfff))
        void* addr = mmap(
            reinterpret_cast<void*>(segment.virt_addr),
            segment.bytes.size(),
            PROT_READ | PROT_WRITE,
            MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
            -1,
            0
        );

        if (addr == MAP_FAILED) {
            log("failed to map segment: {}", strerror(errno));
            exit(1);
        }

        m_mapped_segments.push_back(addr);

        // TODO: map with offset into elf file, so we dont have to memcpy() and mprotect()
        // but this requires rewriting a lot of code in memory.hh and elf.hh
        std::memcpy(reinterpret_cast<char*>(segment.virt_addr), segment.bytes.data(), segment.bytes.size());

        mprotect(addr, segment.bytes.size(), elf_prot_to_mman_prot(segment.flags));

        log("Loaded segment with address {:#x} ({} bytes)",
            segment.virt_addr, segment.bytes.size());
    }

    log("Stack Size: {}", m_stack_size);
    log("{} Segment(s) loaded", m_segments.size());
}
