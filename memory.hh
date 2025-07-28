#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <numeric>
#include <ranges>
#include <vector>

#include "main.hh"
#include "elf.hh"

class Memory {
    // TODO: size load segments dynamically and stack statically
    static constexpr size_t m_memory_size = 4096;
    std::vector<char> m_memory;

public:
    std::span<const LoadSegment> m_segments; // TODO: make private

    Memory() : m_memory(m_memory_size) { }

    // translates a virtual address from the guest binary to the corresponding
    // address of the emulator memory
    [[nodiscard]] size_t translate_address(size_t address) const {

        size_t base = m_segments.front().m_virt_addr;

        auto find_fn = [&](const LoadSegment& segm) {
            return address >= segm.m_virt_addr-base;
        };

        // find the segment the address belongs to
        auto adjacent_segm = std::find_if(m_segments.rbegin(), m_segments.rend(), find_fn);

        assert(adjacent_segm != m_segments.rend());

        auto acc_fn = [&](size_t acc, const LoadSegment& segm) {
            return segm.m_span.size() + acc;
        };

        // start address of the segment the address belongs to
        size_t segment_offset = std::accumulate(m_segments.begin(), adjacent_segm.base()-1, 0, acc_fn);

        size_t relative_offset = address - (adjacent_segm->m_virt_addr - base);

        return segment_offset+relative_offset;
    }

    [[nodiscard]] char* get_data() {
        return m_memory.data();
    }

    void set_byte(size_t address, char byte) {
        m_memory[address] = byte;
    }

    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        return *std::bit_cast<T*>(&m_memory[address]);
    }

    // TODO: check out-of-bounds access
    template <>
    [[nodiscard]] char get<char>(size_t address) const {
        return m_memory[address];
    }

};
