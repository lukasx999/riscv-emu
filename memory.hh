#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <numeric>
#include <vector>

#include "elf.hh"
#include "main.hh"

struct MemoryException : std::runtime_error {
    explicit MemoryException(const char* msg)
    : std::runtime_error(msg)
    { }
};

class Memory {
    static constexpr size_t m_stack_size = 4096;
    std::vector<char> m_memory;
    size_t m_stack_offset = 0;

public:
    std::span<const LoadSegment> m_segments; // TODO: make private

    Memory() : m_memory(m_stack_size) { }

    // translates a virtual address from the guest binary to the corresponding
    // address of the emulator memory
    [[nodiscard]] size_t translate_address(size_t address) const {

        size_t base = m_segments.front().m_virt_addr;

        auto find_fn = [&](const LoadSegment& segm) {
            return address >= segm.m_virt_addr-base;
        };

        // find the segment the address belongs to
        auto adjacent_segm = std::find_if(
            m_segments.rbegin(),
            m_segments.rend(),
            find_fn
        );

        assert(adjacent_segm != m_segments.rend());

        auto acc_fn = [&](size_t acc, const LoadSegment& segm) {
            return segm.m_span.size() + acc;
        };

        // start address of the segment the address belongs to
        size_t segment_offset = std::accumulate(
            m_segments.begin(),
            adjacent_segm.base()-1,
            0,
            acc_fn
        );

        size_t relative_offset = address - (adjacent_segm->m_virt_addr - base);

        return segment_offset+relative_offset;
    }

    void load_binary() {
        size_t offset = 0;

        for (auto& segment : m_segments) {
            size_t size = segment.m_span.size();
            m_memory.resize(m_memory.size()+size);
            std::memcpy(get_data()+offset, segment.m_span.data(), size);
            offset += size;
        }

        m_stack_offset = offset;
    }

    [[nodiscard]] size_t get_stack_address() const {
        return m_stack_offset;
    }

    [[nodiscard]] char* get_data() {
        return m_memory.data();
    }

    void set_byte(size_t address, char byte) {
        size_t addr = translate_address(address);
        check_address(addr);
        m_memory[addr] = byte;
    }

    template <typename T=char>
    [[nodiscard]] const T& get(size_t address) const {
        size_t addr = translate_address(address);
        check_address(addr);
        return *std::bit_cast<T*>(&m_memory[addr]);
    }

    template <>
    [[nodiscard]] const char& get<char>(size_t address) const {
        size_t addr = translate_address(address);
        check_address(addr);
        return m_memory[addr];
    }

private:
    void check_address(size_t address) const {
        if (address >= m_memory.size())
            throw MemoryException("out-of-bounds memory access");
    }

};
