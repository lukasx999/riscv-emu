#pragma once

#include <cassert>
#include <format>
#include <stdexcept>
#include <variant>

#include "main.hh"
#include "register.hh"


static constexpr int opcode_encoding_size    = 7;
static constexpr int register_encoding_size  = 5;
static constexpr int funct3_encoding_size    = 3;
static constexpr int funct7_encoding_size    = 7;
static constexpr int imm_encoding_size       = 12;
static constexpr int imm_large_encoding_size = 20;

struct InstructionR {
    enum class Type {
        Add, Sub, Xor, Or, And, Sll, Srl, Sra, Slt, Sltu
    } m_type;
    Register m_rd;
    Register m_rs1;
    Register m_rs2;
};

struct [[gnu::packed]] RawInstructionR {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int funct7 : funct7_encoding_size;
};

struct InstructionI {
    enum class Type {
        // Arithmetic Immediate
        Addi, Xori, Ori, Andi, Slli, Srli, Srai, Slti, Sltiu,
        // Load
        Lb, Lh, Lw, Lbu, Lhu,
        // Jump
        Jalr,
        // Environment
        Ecall, Ebreak,
    } m_type;
    Register m_rd;
    Register m_rs1;
    // in case of Slli, Srli, and Srai, `m_imm` represents only the
    // lowest 5 bits of the 12 bit immediate value, as the others
    // are used as funct7, and therefore do not contribute
    // to the actual immediate operand
    int16_t m_imm;
};

struct [[gnu::packed]] RawInstructionI {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int imm    : imm_encoding_size;
};

struct InstructionS {
    enum class Type {
        Sb, Sh, Sw
    } m_type;
    Register m_rs1;
    Register m_rs2;
    uint16_t m_imm;
};

struct [[gnu::packed]] RawInstructionS {
    unsigned int opcode : opcode_encoding_size;
    unsigned int imm1   : 5;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int imm2   : 7;
};

struct InstructionB {
    enum class Type {
        Beq, Bne, Blt, Bge, Bltu, Bgeu
    } m_type;
    Register m_rs1;
    Register m_rs2;
    uint16_t m_imm;
};

struct [[gnu::packed]] RawInstructionB {
    unsigned int opcode : opcode_encoding_size;
    unsigned int imm1   : 5;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int imm2   : 7;
};

struct InstructionU {
    enum class Type {
        Lui, Auipc,
    } m_type;
    Register m_rd;
    uint32_t m_imm;
};

struct [[gnu::packed]] RawInstructionU {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int imm    : imm_large_encoding_size;
};

struct InstructionJ {
    enum class Type {
        Jal
    } m_type;
    Register m_rd;
    uint32_t m_imm;
};

struct [[gnu::packed]] RawInstructionJ {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int imm    : imm_large_encoding_size;
};

using Instruction = std::variant<
    InstructionR,
    InstructionI,
    InstructionS,
    InstructionB,
    InstructionU,
    InstructionJ
>;

enum class InstructionFormat {
    RType, IType, SType, BType, UType, JType,
};

struct DecodingException : std::runtime_error {
    explicit DecodingException(const char* msg)
    : std::runtime_error(msg)
    { }
};

class Decoder {
public:
    Decoder() = default;

    [[nodiscard]] static Instruction decode(BinaryInstruction instruction);

private:
    [[nodiscard]] static InstructionFormat decode_format(BinaryInstruction inst);
    [[nodiscard]] static InstructionR decode_rtype(BinaryInstruction inst);
    [[nodiscard]] static InstructionI decode_itype(BinaryInstruction inst);
    [[nodiscard]] static InstructionU decode_utype(BinaryInstruction inst);
    [[nodiscard]] static InstructionR::Type parse_rtype(RawInstructionR inst);
    [[nodiscard]] static InstructionI::Type parse_itype(RawInstructionI inst);
    [[nodiscard]] static InstructionU::Type parse_utype(RawInstructionU inst);

};
