#pragma once

#include <cstdint>
#include <print>
#include <utility>

using Word = uint64_t;
using SignedWord = int64_t;

extern bool enable_logging;

template <typename... Args> inline
void log(std::format_string<Args...> fmt, Args&& ...args) {
    if (enable_logging) {
        std::print(stderr, "[LOG] ");
        std::println(stderr, fmt, std::forward<Args>(args)...);
    }
}

[[nodiscard]] uint64_t extract_bits(uint64_t value, int start, int size);
[[nodiscard]] uint64_t set_bits(uint64_t value, int start, int size, bool bit);
[[nodiscard]] uint64_t sign_extend(uint64_t value, int size_bits);
