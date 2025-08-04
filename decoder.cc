#include <cassert>
#include <bit>
#include <stdexcept>

#include "decoder.hh"

namespace {

constexpr int opcode_encoding_size    = 7;
constexpr int register_encoding_size  = 5;
constexpr int funct3_encoding_size    = 3;
constexpr int funct7_encoding_size    = 7;
constexpr int imm_encoding_size       = 12;
constexpr int imm_large_encoding_size = 20;

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
    signed int imm    : imm_encoding_size;
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

static_assert(sizeof(RawInstructionR) == sizeof(BinaryInstruction));
static_assert(sizeof(RawInstructionI) == sizeof(BinaryInstruction));
static_assert(sizeof(RawInstructionS) == sizeof(BinaryInstruction));
static_assert(sizeof(RawInstructionB) == sizeof(BinaryInstruction));
static_assert(sizeof(RawInstructionU) == sizeof(BinaryInstruction));
static_assert(sizeof(RawInstructionJ) == sizeof(BinaryInstruction));

[[nodiscard]] InstructionR::Type parse_rtype(RawInstructionR inst) {
    using enum InstructionR::Type;

    if (inst.opcode == 0b0110011) {
        switch (inst.funct3) {
            case 0x0:
                if      (inst.funct7 == 0x00) return Add;
                else if (inst.funct7 == 0x20) return Sub;
            case 0x4: return Xor;
            case 0x6: return Or;
            case 0x7: return And;
            case 0x1: return Sll;
            case 0x5:
                if      (inst.funct7 == 0x00) return Srl;
                else if (inst.funct7 == 0x20) return Sra;
            case 0x2: return Slt;
            case 0x3: return Sltu;

        }
    }

    throw DecodingException("invalid r-type instruction");
}

[[nodiscard]] InstructionI::Type parse_itype(RawInstructionI inst) {
    using enum InstructionI::Type;

    switch (inst.opcode) {
        case 0b0010011:
            switch (inst.funct3) {
                case 0x0: return Addi;
                case 0x4: return Xori;
                case 0x6: return Ori;
                case 0x7: return Andi;
                case 0x1:
                    if (extract_bits(inst.imm, 5, 7) == 0x00) return Slli;
                case 0x5:
                    if      (extract_bits(inst.imm, 5, 7) == 0x00) return Srli;
                    else if (extract_bits(inst.imm, 5, 7) == 0x20) return Srai;
                case 0x2: return Slti;
                case 0x3: return Sltiu;
            }
            break;

        case 0b0000011:
            switch (inst.funct3) {
                case 0x0: return Lb;
                case 0x1: return Lh;
                case 0x2: return Lw;
                case 0x4: return Lbu;
                case 0x5: return Lhu;
            }
            break;

        case 0b1110011:
            switch (inst.funct3) {
                case 0x0:
                    if      (inst.imm == 0x0) return Ecall;
                    else if (inst.imm == 0x1) return Ebreak;
            }
            break;

        case 0b1100111:
            if (inst.funct3 == 0x0)
                return Jalr;
    }

    throw DecodingException("invalid i-type instruction");
}

[[nodiscard]] InstructionS::Type parse_stype(RawInstructionS inst) {
    using enum InstructionS::Type;

    if (inst.opcode == 0b0100011) {
        switch (inst.funct3) {
            case 0x0: return Sb;
            case 0x1: return Sh;
            case 0x2: return Sw;
        }
    }

    throw DecodingException("invalid s-type instruction");
}

[[nodiscard]] InstructionB::Type parse_btype(RawInstructionB inst) {
    using enum InstructionB::Type;

    if (inst.opcode == 0b1100011) {
        switch (inst.funct3) {
            case 0x0: return Beq;
            case 0x1: return Bne;
            case 0x4: return Blt;
            case 0x5: return Bge;
            case 0x6: return Bltu;
            case 0x7: return Bgeu;
        }
    }

    throw DecodingException("invalid b-type instruction");
}

[[nodiscard]] InstructionU::Type parse_utype(RawInstructionU inst) {
    using enum InstructionU::Type;

    switch (inst.opcode) {
        case 0b0110111: return Lui;
        case 0b0010111: return Auipc;
    }

    throw DecodingException("invalid u-type instruction");
}

[[nodiscard]] InstructionJ::Type parse_jtype(RawInstructionJ inst) {
    using enum InstructionJ::Type;

    if (inst.opcode == 0b1101111)
        return Jal;

    throw DecodingException("invalid j-type instruction");
}

}

Instruction Decoder::decode(BinaryInstruction instruction) {

    auto format = decode_format(instruction);

    switch (format) {
        using enum InstructionFormat;
        case RType: return decode_rtype(instruction);
        case IType: return decode_itype(instruction);
        case SType: return decode_stype(instruction);
        case BType: return decode_btype(instruction);
        case UType: return decode_utype(instruction);
        case JType: return decode_jtype(instruction);
    }

    throw std::runtime_error("unreachable: format decoder should have thrown exception by now");

}

InstructionFormat Decoder::decode_format(BinaryInstruction inst) {

    uint8_t opcode = extract_bits(inst, 0, opcode_encoding_size);

    switch (opcode) {
        case 0b0110011:
            return InstructionFormat::RType;

        case 0b0010011:
        case 0b0000011:
        case 0b1100111:
        case 0b1110011:
            return InstructionFormat::IType;

        case 0b0100011:
            return InstructionFormat::SType;

        case 0b1100011:
            return InstructionFormat::BType;

        case 0b0110111:
        case 0b0010111:
            return InstructionFormat::UType;

        case 0b1101111:
            return InstructionFormat::JType;
    }

    throw DecodingException("invalid instruction format");
}

InstructionR Decoder::decode_rtype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionR>(inst);

    return {
        parse_rtype(raw_inst),
        static_cast<Register>(raw_inst.rd),
        static_cast<Register>(raw_inst.rs1),
        static_cast<Register>(raw_inst.rs2),
    };
}

InstructionI Decoder::decode_itype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionI>(inst);

    auto type = parse_itype(raw_inst);
    int16_t imm = raw_inst.imm;

    switch (type) {
        using enum InstructionI::Type;
        case Slli:
        case Srli:
        case Srai:
            imm = extract_bits(imm, 0, 5);
            break;

        default:
            break;
    }

    return {
        type,
        static_cast<Register>(raw_inst.rd),
        static_cast<Register>(raw_inst.rs1),
        imm
    };
}

InstructionS Decoder::decode_stype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionS>(inst);

    int16_t imm = raw_inst.imm2 << 5 | raw_inst.imm1;
    return {
        parse_stype(raw_inst),
        static_cast<Register>(raw_inst.rs1),
        static_cast<Register>(raw_inst.rs2),
        imm
    };
}

InstructionB Decoder::decode_btype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionB>(inst);

    uint16_t a = extract_bits(raw_inst.imm1, 1, 4);
    uint16_t b = extract_bits(raw_inst.imm2, 0, 6);
    uint16_t c = extract_bits(raw_inst.imm1, 0, 1);
    uint16_t d = extract_bits(raw_inst.imm2, 6, 1);
    int32_t imm = a << 1 | b << 5 | c << 11 | d << 12;

    return {
        parse_btype(raw_inst),
        static_cast<Register>(raw_inst.rs1),
        static_cast<Register>(raw_inst.rs2),
        imm
    };
}

InstructionU Decoder::decode_utype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionU>(inst);

    return {
        parse_utype(raw_inst),
        static_cast<Register>(raw_inst.rd),
        raw_inst.imm
    };
}

InstructionJ Decoder::decode_jtype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionJ>(inst);

    struct Imm {
        unsigned int a : 8;
        unsigned int b : 1;
        unsigned int c : 10;
        unsigned int d : 1;
    };

    auto i = std::bit_cast<Imm>(raw_inst.imm);
    int32_t imm = i.c << 1 | i.b << 11 | i.a << 12 | i.d << 20;

    return {
        parse_jtype(raw_inst),
        static_cast<Register>(raw_inst.rd),
        imm
    };
}
