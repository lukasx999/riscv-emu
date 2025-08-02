#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <numeric>
#include <vector>

#include "elf.hh"
#include "util.hh"

#include "memory.hh"

size_t Memory::translate_address(size_t guest_address) const {

    // no need for translation if no segment are loaded
    if (m_segments.empty()) return guest_address;

    size_t base = m_segments.front().virt_addr;

    auto find_fn = [&](const LoadSegment& segm) {
        return guest_address >= segm.virt_addr-base;
    };

    // find the segment the address belongs to
    auto adjacent_segm = std::find_if(
        m_segments.rbegin(),
        m_segments.rend(),
        find_fn
    );

    assert(adjacent_segm != m_segments.rend());

    auto acc_fn = [&](size_t acc, const LoadSegment& segm) {
        return segm.bytes.size() + acc;
    };

    // start address of the segment the address belongs to
    size_t segment_offset = std::accumulate(
        m_segments.begin(),
        adjacent_segm.base()-1,
        0,
        acc_fn
    );

    size_t relative_offset = guest_address - (adjacent_segm->virt_addr - base);

    size_t address = segment_offset+relative_offset;

    if (address >= m_memory.size())
        throw MemoryException("out-of-bounds memory access");

    return address;
}

void Memory::load_binary() {
    size_t offset = 0;

    for (auto& segment : m_segments) {
        size_t size = segment.bytes.size();
        m_memory.resize(m_memory.size()+size);
        std::memcpy(m_memory.data()+offset, segment.bytes.data(), size);
        offset += size;

        log("Loaded segment with address {:#x} ({} bytes)",
            segment.virt_addr, segment.bytes.size());
    }

    log("{} Segment(s) loaded", m_segments.size());

    m_stack_offset = offset;
}
