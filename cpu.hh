#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <stdexcept>
#include <utility>
#include <array>
#include <variant>

#include "main.hh"

// TODO: proper error handling

enum class Register : uint8_t {
    X0 = 0, Zero = X0,
    X1 = 1, Ra = 1,
    X2 = 2, Sp = 2,
    X3 = 3, Gp = 3,
    X4 = 4, Tp = 4,
    X5 = 5, T0 = 5,
    X6 = 6, T1 = 6,
    X7 = 7, T2 = 7,
    X8 = 8, Fp = 8, S0 = 8,
    X9 = 9, S1 = 9,
    X10 = 10, A0 = 10,
    X11 = 11, A1 = 11,
    X12 = 12, A2 = 12,
    X13 = 13, A3 = 13,
    X14 = 14, A4 = 14,
    X15 = 15, A5 = 15,
    X16 = 16, A6 = 16,
    X17 = 17, A7 = 17,
    X18 = 18, S2 = 18,
    X19 = 19, S3 = 19,
    X20 = 20, S4 = 20,
    X21 = 21, S5 = 21,
    X22 = 22, S6 = 22,
    X23 = 23, S7 = 23,
    X24 = 24, S8 = 24,
    X25 = 25, S9 = 25,
    X26 = 26, S10 = 26,
    X27 = 27, S11 = 27,
    X28 = 28, T3 = 28,
    X29 = 29, T4 = 29,
    X30 = 30, T5 = 30,
    X31 = 31, T6 = 31,
};

class Registers {
    static constexpr size_t m_register_count = 32;
    std::array<Word, m_register_count> m_registers;

public:
    void set(Register reg, Word value) {
        m_registers[std::to_underlying(reg)] = value;
    }

    [[nodiscard]] Word& get(Register reg) {
        return m_registers[std::to_underlying(reg)];
    }

};

struct InstructionIType {
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
    uint16_t m_imm;
};

struct InstructionRType {
    enum class Type {
    } m_type;
    Register m_rd;
    Register m_rs1;
    Register m_rs2;
};

using Instruction = std::variant<InstructionIType, InstructionRType>;

class CPU {
    enum class Op : uint8_t {
        Arithmetic    = 0b0110011,
        ArithmeticImm = 0b0010011,
        Load          = 0b0000011,
        Store         = 0b0100011,
        Branch        = 0b1100011,
        Jump          = 0b1101111,
        Upper         = 0b0110111,
        Environment   = 0b1110011,
    };

public:
    uint64_t m_pc;
    Registers m_registers;
    static constexpr int m_opcode_encoding_len = 7;
    static constexpr int m_register_encoding_len = 5;

    CPU() = default;

    Instruction decode(Word instruction) {

        uint8_t opcode = extract_bits(instruction, 0, m_opcode_encoding_len);

        if (instruction_is_itype(opcode)) {
            return decode_itype(opcode, instruction);
        } else {
            throw std::runtime_error("invalid instruction type");
        }

    }

private:
    [[nodiscard]] static Instruction decode_itype(uint8_t opcode, Word inst) {
        int funct3_encoding_size = 3;
        int imm_encoding_size = 12;

        uint8_t rd     = extract_bits(inst, m_opcode_encoding_len,                                                m_register_encoding_len);
        uint8_t funct3 = extract_bits(inst, m_opcode_encoding_len+m_register_encoding_len,                        funct3_encoding_size);
        uint8_t rs1    = extract_bits(inst, m_opcode_encoding_len+m_register_encoding_len+funct3_encoding_size,   m_register_encoding_len);
        uint8_t imm    = extract_bits(inst, m_opcode_encoding_len+m_register_encoding_len*2+funct3_encoding_size, imm_encoding_size);

        auto type = parse_itype(opcode, funct3, imm);
        return InstructionIType(type, static_cast<Register>(rd),
                                static_cast<Register>(rs1), imm);
    }

    [[nodiscard]] static InstructionIType::Type
    parse_itype(uint8_t opcode, uint8_t funct3, uint16_t imm) {
        using enum InstructionIType::Type;

        switch (opcode) {
            case 0b0010011: {
                switch (funct3) {
                    case 0x0: return Addi;
                    case 0x4: return Xori;
                    case 0x6: return Ori;
                    case 0x7: return Andi;
                    case 0x1:
                        if (extract_bits(imm, 5, 7) == 0x0)
                            return Slli;
                    case 0x5:
                        if (extract_bits(imm, 5, 7) == 0x20)
                            return Srai;
                        else if (extract_bits(imm, 5, 7) == 0x0)
                            return Srli;
                    case 0x2: return Slti;
                    case 0x3: return Sltiu;
                }
            } break;
        }

        throw std::runtime_error("invalid instruction");

    }

    // `start` start at 0
    [[nodiscard]] static constexpr
    uint64_t extract_bits(uint64_t value, uint8_t start, uint8_t size) {
        uint8_t num = 0;
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
