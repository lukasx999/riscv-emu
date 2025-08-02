#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "elf.hh"
#include "util.hh"

struct MemoryException : std::runtime_error {
    explicit MemoryException(const char* msg)
    : std::runtime_error(msg)
    { }
};

class Memory {
    static constexpr size_t m_stack_size = 4096 * 10;
    std::vector<char> m_memory;
    size_t m_stack_offset = 0;
    std::span<const LoadSegment> m_segments;

public:
    Memory(std::span<const LoadSegment> segments)
        : m_memory(m_stack_size)
        , m_segments(segments)
    {
        load_binary();
    }

    Memory() : m_memory(m_stack_size) { }

    [[nodiscard]] size_t get_stack_address() const {
        return m_stack_offset;
    }

    template <typename T=char>
    void set(size_t guest_address, T value) {
        size_t addr = translate_address(guest_address);
        reinterpret_cast<T&>(m_memory[addr]) = std::move(value);
    }

    template <typename T=char>
    [[nodiscard]] const T& get(size_t guest_address) const {
        size_t addr = translate_address(guest_address);
        return reinterpret_cast<const T&>(m_memory[addr]);
    }

    // TODO: what about stack addresses?
    // if adjacent segment is not found, or none exist, just return stack offset?

    // translates a virtual address from the guest binary to the corresponding
    // address of the emulator memory
    [[nodiscard]] size_t translate_address(size_t guest_address) const;

private:
    void load_binary();

};
