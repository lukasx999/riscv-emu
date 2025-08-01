#include <cassert>
#include <cstdlib>
#include <cstdio>
#include <ranges>

#include <readline/readline.h>

#include "machine.hh"

#pragma once

class REPL {
    CPU& m_cpu;

public:
    REPL(CPU& cpu) : m_cpu(cpu) { }

    void run() {
        std::println(stderr, "Welcome to {}.", global_data.program_name);

        while (true) {
            auto line = get_line("riscv-emu> ");
            if (!line) break;

            if (handle_commands(*line)) continue;

            execute_line(std::move(*line));

        }
    }

private:
    void execute_line(std::string line) {
        auto instructions = encode_instruction(std::move(line));

        if (!instructions) {
            std::println(stderr, "failed to assemble, try again.");
            return;
        }

        for (auto& inst : *instructions) {
            m_cpu.execute(m_cpu.m_decoder.decode(inst));
        }

    }

    [[nodiscard]] static
    auto get_line(const char* prompt) -> std::optional<std::string> {
        char* raw_line = readline(prompt);
        if (raw_line == nullptr) return {};

        std::string line(raw_line);
        free(raw_line);
        return line;
    }

    // returns `true` if a command was found
    bool handle_commands(std::string line) {
        std::istringstream buf(std::move(line));
        std::vector<std::string> tokens;

        std::string str;
        while (std::getline(buf, str, ' '))
            tokens.push_back(str);

        std::erase_if(tokens, [](const std::string& str) { return str.empty(); });

        if (tokens.front() == ":print") {
            // TODO: printing logic
            std::println(stderr, "T0: {}", m_cpu.m_registers.get(Register::T0));
            return true;
        }

        return false;

    }

};
