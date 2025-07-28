#pragma once

#include <cstdint>
#include <print>
#include <utility>

using BinaryInstruction = uint32_t;
using Word = uint64_t;

#define EMU_LOG

template <typename... Args> static
void log(std::format_string<Args...> fmt, [[maybe_unused]] Args&& ...args) {
    #ifdef EMU_LOG
    std::print("[LOG] ");
    std::println(fmt, std::forward<Args>(args)...);
    #endif // EMU_LOG
}
