#pragma once

#include <string>
#include <optional>

#include "machine.hh"

class REPL {
    static constexpr auto m_prompt = "riscv :: ";
    Machine& m_machine;

public:
    REPL(Machine& machine) : m_machine(machine) { }

    void run();

private:
    void execute_line(std::string line);
    [[nodiscard]] static
    auto get_line(const char* prompt) -> std::optional<std::string>;
    // returns `true` if a command was found
    bool handle_commands(std::string line);

};
