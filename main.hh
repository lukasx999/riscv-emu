#pragma once

#include <cstdint>
#include <print>
#include <utility>

using BinaryInstruction = uint32_t;
using Word = uint64_t;

#define EMU_LOG

template <typename... Args> inline
void log(std::format_string<Args...> fmt, [[maybe_unused]] Args&& ...args) {
    #ifdef EMU_LOG
    std::print("[LOG] ");
    std::println(fmt, std::forward<Args>(args)...);
    #endif // EMU_LOG
}

// `start` begins at 0
[[nodiscard]] inline constexpr
uint64_t extract_bits(uint64_t value, int start, int size) {
    int mask = 0;
    for (auto i=0; i < size; ++i)
        mask |= 1 << i;

    return (value >> start) & mask;
}

// `start` begins at 0
[[nodiscard]] inline constexpr
uint64_t set_bits(uint64_t value, int start, int size, bool bit) {
    int mask = 0;
    for (auto i=0; i < size; ++i)
        mask |= 1 << (i + start);

    if (bit)
        return value | mask;
    else
        return value & ~mask;
}
