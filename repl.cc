#include <cstdlib>
#include <cstdio>

#include <readline/readline.h>

#include "repl.hh"

void REPL::run() {
    std::println(stderr, "Welcome to {}.", global_data.program_name);

    while (true) {
        auto line = get_line("riscv-emu> ");
        if (!line) break;

        if (handle_commands(*line)) continue;

        execute_line(std::move(*line));

    }
}

void REPL::execute_line(std::string line) {
    auto instructions = encode_instruction(std::move(line));

    if (!instructions) {
        std::println(stderr, "failed to assemble, try again.");
        return;
    }

    for (auto& inst : *instructions) {
        m_cpu.execute(m_cpu.m_decoder.decode(inst));
    }

}

auto REPL::get_line(const char* prompt) -> std::optional<std::string> {
    char* raw_line = readline(prompt);
    if (raw_line == nullptr) return {};

    std::string line(raw_line);
    free(raw_line);
    return line;
}

bool REPL::handle_commands(std::string line) {
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
