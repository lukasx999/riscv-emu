#pragma once

#include <cassert>
#include <stdexcept>
#include <variant>

#include "util.hh"
#include "register.hh"

inline constexpr int opcode_encoding_size    = 7;
inline constexpr int register_encoding_size  = 5;
inline constexpr int funct3_encoding_size    = 3;
inline constexpr int funct7_encoding_size    = 7;
inline constexpr int imm_encoding_size       = 12;
inline constexpr int imm_large_encoding_size = 20;

struct InstructionR {
    enum class Type {
        Add, Sub, Xor, Or, And, Sll, Srl, Sra, Slt, Sltu
    } type;
    Register rd;
    Register rs1;
    Register rs2;
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
    } type;
    Register rd;
    Register rs1;
    // in case of Slli, Srli, and Srai, `m_imm` represents only the
    // lowest 5 bits of the 12 bit immediate value, as the others
    // are used as funct7, and therefore do not contribute
    // to the actual immediate operand
    int16_t imm;
};

struct InstructionS {
    enum class Type { Sb, Sh, Sw } type;
    Register rs1;
    Register rs2;
    uint16_t imm;
};

struct InstructionB {
    enum class Type { Beq, Bne, Blt, Bge, Bltu, Bgeu } type;
    Register rs1;
    Register rs2;
    uint32_t imm;
};


struct InstructionU {
    enum class Type { Lui, Auipc } type;
    Register rd;
    uint32_t imm;
};

struct InstructionJ {
    enum class Type { Jal } type;
    Register rd;
    uint32_t imm;
};

// TODO: move all of this stuff to implementation
struct RawInstructionR {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int funct7 : funct7_encoding_size;
};

struct RawInstructionI {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int imm    : imm_encoding_size;
};

struct RawInstructionS {
    unsigned int opcode : opcode_encoding_size;
    unsigned int imm1   : 5;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int imm2   : 7;
};

struct RawInstructionB {
    unsigned int opcode : opcode_encoding_size;
    unsigned int imm1   : 5;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int imm2   : 7;
};

struct RawInstructionU {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int imm    : imm_large_encoding_size;
};

struct RawInstructionJ {
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

enum class InstructionFormat { RType, IType, SType, BType, UType, JType };

struct DecodingException : std::runtime_error {
    explicit DecodingException(const char* msg) : std::runtime_error(msg) { }
};

class Decoder {
public:
    Decoder() = default;

    [[nodiscard]] static Instruction decode(BinaryInstruction instruction);

private:
    [[nodiscard]] static InstructionFormat decode_format(BinaryInstruction inst);
    [[nodiscard]] static InstructionR decode_rtype(BinaryInstruction inst);
    [[nodiscard]] static InstructionI decode_itype(BinaryInstruction inst);
    [[nodiscard]] static InstructionS decode_stype(BinaryInstruction inst);
    [[nodiscard]] static InstructionB decode_btype(BinaryInstruction inst);
    [[nodiscard]] static InstructionU decode_utype(BinaryInstruction inst);
    [[nodiscard]] static InstructionJ decode_jtype(BinaryInstruction inst);
    [[nodiscard]] static InstructionR::Type parse_rtype(RawInstructionR inst);
    [[nodiscard]] static InstructionI::Type parse_itype(RawInstructionI inst);
    [[nodiscard]] static InstructionS::Type parse_stype(RawInstructionS inst);
    [[nodiscard]] static InstructionB::Type parse_btype(RawInstructionB inst);
    [[nodiscard]] static InstructionU::Type parse_utype(RawInstructionU inst);
    [[nodiscard]] static InstructionJ::Type parse_jtype(RawInstructionJ inst);

};
