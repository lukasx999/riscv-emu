#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <bit>

#include "elf.hh"

struct MemoryException : std::runtime_error {
    explicit MemoryException(const char* msg) : std::runtime_error(msg) { }
};

class Memory {
    const size_t m_stack_size;
    void* m_stack_addr = nullptr;
    const std::span<const LoadSegment> m_segments;
    std::vector<std::pair<void*, size_t>> m_mapped_segments;

public:
    Memory(std::span<const LoadSegment> segments, size_t stack_size)
        : m_stack_size(stack_size)
        , m_segments(segments)
    {
        map_stack();
        load_binary();
    }

    explicit Memory(size_t stack_size)
        : m_stack_size(stack_size)
    {
        map_stack();
    }

    ~Memory();

    [[nodiscard]] size_t get_stack_address_top() const {
        return reinterpret_cast<size_t>(m_stack_addr) + m_stack_size;
    }

    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        T x{};
        std::memcpy(std::addressof(x), reinterpret_cast<const void*>(address), sizeof(T));
        return x;
        // return *reinterpret_cast<T*>(address);
    }

    template <typename T=char>
    void set(size_t address, const T& value) {
        reinterpret_cast<T&>(address) = value;
    }

private:
    [[nodiscard]] static int elf_prot_to_mman_prot(int prot);
    void map_stack();
    void load_binary();

};
