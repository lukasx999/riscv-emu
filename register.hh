#pragma once

#include <cassert>
#include <cstdlib>
#include <bit>
#include <print>
#include <cstring>
#include <stdexcept>
#include <utility>
#include <array>
#include <variant>

#include "main.hh"

enum class Register : uint8_t {
    X0  = 0,  Zero = X0,
    X1  = 1,  Ra   = 1,
    X2  = 2,  Sp   = 2,
    X3  = 3,  Gp   = 3,
    X4  = 4,  Tp   = 4,
    X5  = 5,  T0   = 5,
    X6  = 6,  T1   = 6,
    X7  = 7,  T2   = 7,
    X8  = 8,  S0   = 8, Fp = 8,
    X9  = 9,  S1   = 9,
    X10 = 10, A0   = 10,
    X11 = 11, A1   = 11,
    X12 = 12, A2   = 12,
    X13 = 13, A3   = 13,
    X14 = 14, A4   = 14,
    X15 = 15, A5   = 15,
    X16 = 16, A6   = 16,
    X17 = 17, A7   = 17,
    X18 = 18, S2   = 18,
    X19 = 19, S3   = 19,
    X20 = 20, S4   = 20,
    X21 = 21, S5   = 21,
    X22 = 22, S6   = 22,
    X23 = 23, S7   = 23,
    X24 = 24, S8   = 24,
    X25 = 25, S9   = 25,
    X26 = 26, S10  = 26,
    X27 = 27, S11  = 27,
    X28 = 28, T3   = 28,
    X29 = 29, T4   = 29,
    X30 = 30, T5   = 30,
    X31 = 31, T6   = 31,
};

template <>
struct std::formatter<Register> : std::formatter<std::string> {

    auto format(const Register& reg, std::format_context& ctx) const {
        auto str = [&] {
            switch (reg) {
                using enum Register;
                case Zero: return "Zero";
                case Ra:   return "Ra";
                case Sp:   return "Sp";
                case Gp:   return "Gp";
                case Tp:   return "Tp";
                case T0:   return "T0";
                case T1:   return "T1";
                case T2:   return "T2";
                case Fp:   return "Fp";
                case S1:   return "S1";
                case A0:   return "A0";
                case A1:   return "A1";
                case A2:   return "A2";
                case A3:   return "A3";
                case A4:   return "A4";
                case A5:   return "A5";
                case A6:   return "A6";
                case A7:   return "A7";
                case S2:   return "S2";
                case S3:   return "S3";
                case S4:   return "S4";
                case S5:   return "S5";
                case S6:   return "S6";
                case S7:   return "S7";
                case S8:   return "S8";
                case S9:   return "S9";
                case S10:  return "S10";
                case S11:  return "S11";
                case T3:   return "T3";
                case T4:   return "T4";
                case T5:   return "T5";
                case T6:   return "T6";
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

class Registers {
    static constexpr size_t m_register_count = 32;
    std::array<Word, m_register_count> m_registers{};

public:
    Registers() = default;

    void set(Register reg, Word value) {
        if (reg == Register::Zero) return;
        m_registers[std::to_underlying(reg)] = value;
    }

    [[nodiscard]] Word get(Register reg) const {
        if (reg == Register::Zero) return 0;
        return m_registers[std::to_underlying(reg)];
    }

};
