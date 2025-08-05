#pragma once

#include <cassert>
#include <stdexcept>
#include <variant>

#include "util.hh"
#include "register.hh"

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
    Immediate12Bit imm;
};

struct InstructionB {
    enum class Type { Beq, Bne, Blt, Bge, Bltu, Bgeu } type;
    Register rs1;
    Register rs2;
    Immediate13Bit imm;
};

struct InstructionU {
    enum class Type { Lui, Auipc } type;
    Register rd;
    Immediate20Bit imm;
};

struct InstructionJ {
    enum class Type { Jal } type;
    Register rd;
    Immediate21Bit imm;
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

};
