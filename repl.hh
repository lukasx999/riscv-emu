#include "cpu.hh"

#pragma once

class REPL {
    CPU& m_cpu;

public:
    REPL(CPU& cpu) : m_cpu(cpu) { }

    void run();

private:
    void execute_line(std::string line);
    [[nodiscard]] static
    auto get_line(const char* prompt) -> std::optional<std::string>;
    // returns `true` if a command was found
    bool handle_commands(std::string line);

};
