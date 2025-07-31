#pragma once

#include <cstdint>
#include <vector>
#include <filesystem>
#include <iterator>
#include <print>
#include <utility>

using Word = uint64_t;
using SignedWord = int64_t;
using BinaryInstruction = uint32_t;

struct GlobalData {
    std::string assembler_path;
    std::string objcopy_path;
    bool enable_logging;
} extern global_data;

// returns vector, as pseudoinstructions will be expanded into multiple
// primitive instructions
[[nodiscard]] std::vector<BinaryInstruction> encode_instruction(std::string instruction);

template <typename... Args> inline
void log(std::format_string<Args...> fmt, Args&& ...args) {
    if (global_data.enable_logging) {
        std::print(stderr, "[LOG] ");
        std::println(stderr, fmt, std::forward<Args>(args)...);
    }
}

[[nodiscard]] uint64_t extract_bits(uint64_t value, int start, int size);
[[nodiscard]] uint64_t set_bits(uint64_t value, int start, int size, bool bit);
[[nodiscard]] uint64_t sign_extend(uint64_t value, int size_bits);
