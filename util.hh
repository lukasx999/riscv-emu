#pragma once

#include <cstdint>
#include <optional>
#include <vector>
#include <string>
#include <print>
#include <utility>

using Word = uint64_t;
using SignedWord = int64_t;
using BinaryInstruction = uint32_t;
using Immediate12Bit = int16_t;
using Immediate13Bit = int16_t;
using Immediate20Bit = int32_t;
using Immediate21Bit = int32_t;

struct GlobalData {
    static constexpr std::string program_name = "riscv-emu";
    std::string assembler_path = "/usr/bin/riscv64-elf-as";
    std::string objcopy_path = "/usr/bin/riscv64-elf-objcopy";
    bool enable_logging = false;
} extern global_data;

template <typename... Args> inline
void log(std::format_string<Args...> fmt, Args&& ...args) {
    if (!global_data.enable_logging) return;
    std::print(stderr, "[LOG] ");
    std::println(stderr, fmt, std::forward<Args>(args)...);
}

// returns vector, as pseudoinstructions will be expanded into multiple
// primitive instructions
[[nodiscard]] auto encode_instruction(std::string instruction)
-> std::optional<std::vector<BinaryInstruction>>;
[[nodiscard]] uint64_t extract_bits(uint64_t value, int start, int size);
[[nodiscard]] uint64_t set_bits(uint64_t value, int start, int size, bool bit);
[[nodiscard]] uint64_t sign_extend(uint64_t value, int size_bits);
