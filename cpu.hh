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

// TODO: proper error handling
// TODO: decoder class

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

    [[nodiscard]] Word& get(Register reg) {
        return m_registers[std::to_underlying(reg)];
    }

};

struct InstructionI {
    enum class Type {
        Addi,
        Xori,
        Ori,
        Andi,
        Slli,
        Srli,
        Srai,
        Slti,
        Sltiu,
        Lb,
        Lh,
        Lw,
        Lbu,
        Lhu,
        Ecall,
        Ebreak,
    } m_type;
    Register m_rd;
    Register m_rs1;
    int16_t m_imm;
};

template <>
struct std::formatter<InstructionI::Type> : std::formatter<std::string> {

    auto format(const InstructionI::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionI::Type;
                case Addi:   return "Addi";
                case Xori:   return "Xori";
                case Ori:    return "Ori";
                case Andi:   return "Andi";
                case Slli:   return "Slli";
                case Srli:   return "Srli";
                case Srai:   return "Srai";
                case Slti:   return "Slti";
                case Sltiu:  return "Sltiu";
                case Lb:     return "Lb";
                case Lh:     return "Lh";
                case Lw:     return "Lw";
                case Lbu:    return "Lbu";
                case Lhu:    return "Lhu";
                case Ecall:  return "Ecall";
                case Ebreak: return "Ebreak";
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

struct InstructionR {
    enum class Type {
    } m_type;
    Register m_rd;
    Register m_rs1;
    Register m_rs2;
};

using Instruction = std::variant<InstructionI, InstructionR>;

class CPU {

    struct InstructionVisitor {
        CPU& m_cpu;

        void operator()(const InstructionI& inst) {
            switch (inst.m_type) {
                using enum InstructionI::Type;
                case Addi: {
                    auto value = m_cpu.m_registers.get(inst.m_rs1);
                    m_cpu.m_registers.set(inst.m_rd, value + inst.m_imm);
                } break;
            }
        }

        void operator()(const InstructionR& inst) {
        }

    };

public:
    uint64_t m_pc;
    Registers m_registers;
    static constexpr int m_opcode_encoding_len = 7;

    enum OpCode : uint8_t {
        Arithmetic    = 0b0110011,
        ArithmeticImm = 0b0010011,
        Load          = 0b0000011,
        Store         = 0b0100011,
        Branch        = 0b1100011,
        Jump          = 0b1101111,
        Upper         = 0b0110111,
        Environment   = 0b1110011,
    };

    CPU() = default;

    void execute(Instruction instruction) {
        std::visit(InstructionVisitor(*this), instruction);
    }

    Instruction decode(uint32_t instruction) {

        uint8_t opcode = extract_bits(instruction, 0, m_opcode_encoding_len);

        if (instruction_is_itype(opcode)) {
            return decode_itype(instruction);

        } else {
            throw std::runtime_error("invalid instruction type");

        }

    }

private:
    enum class InstructionFormat {
        RType, IType, SType, BType, UType, JType
    };

    InstructionFormat decode_format(uint32_t inst) {
    }

    struct [[gnu::packed]] RawInstructionI {
        unsigned int opcode : 7;
        unsigned int rd     : 5;
        unsigned int funct3 : 3;
        unsigned int rs1    : 5;
        unsigned int imm    : 12;
    };

    [[nodiscard]] static Instruction decode_itype(uint32_t instruction) {
        auto inst = std::bit_cast<RawInstructionI>(instruction);

        return InstructionI(
            parse_itype(inst),
            static_cast<Register>(inst.rd),
            static_cast<Register>(inst.rs1),
            inst.imm
        );
    }

    [[nodiscard]] static InstructionI::Type parse_itype(RawInstructionI inst) {
        using enum InstructionI::Type;

        switch (inst.opcode) {
            case OpCode::ArithmeticImm:
                switch (inst.funct3) {
                    case 0x0: return Addi;
                    case 0x4: return Xori;
                    case 0x6: return Ori;
                    case 0x7: return Andi;
                    case 0x1:
                        if (extract_bits(inst.imm, 5, 7) == 0x0)
                            return Slli;
                    case 0x5:
                        if (extract_bits(inst.imm, 5, 7) == 0x20)
                            return Srai;
                        else if (extract_bits(inst.imm, 5, 7) == 0x0)
                            return Srli;
                    case 0x2: return Slti;
                    case 0x3: return Sltiu;
                }
                break;

            case OpCode::Load:
                switch (inst.funct3) {
                    case 0x0: return Lb;
                    case 0x1: return Lh;
                    case 0x2: return Lw;
                    case 0x4: return Lbu;
                    case 0x5: return Lhu;
                }
                break;

            case OpCode::Environment:
                switch (inst.funct3) {
                    case 0x0:
                        if (inst.imm == 0x0)
                            return Ecall;
                        else if (inst.imm == 0x1)
                            return Ebreak;
                }
                break;
        }

        throw std::runtime_error("invalid instruction");

    }

    // `start` start at 0
    [[nodiscard]] static constexpr
    uint64_t extract_bits(uint64_t value, int start, int size) {
        int num = 0;
        for (auto i=0; i < size; ++i)
            num |= 1 << i;

        return (value >> start) & num;
    }

    [[nodiscard]] static constexpr
    bool instruction_is_itype(uint8_t opcode) {
        return opcode == 0b0010011 ||
        opcode == 0b0000011 ||
        opcode == 0b1110011;
    }

};
