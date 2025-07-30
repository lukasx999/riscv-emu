#include <cassert>
#include <bit>
#include <stdexcept>

#include "decoder.hh"

Instruction Decoder::decode(BinaryInstruction instruction) {

    auto format = decode_format(instruction);

    switch (format) {
        using enum InstructionFormat;
        case RType: return decode_rtype(instruction);
        case IType: return decode_itype(instruction);
        case UType: return decode_utype(instruction);

        default: throw std::runtime_error("unimplemented instruction format"); // TODO:
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
    uint16_t imm = raw_inst.imm;

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
        static_cast<int16_t>(imm)
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

InstructionR::Type Decoder::parse_rtype(RawInstructionR inst) {
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

InstructionI::Type Decoder::parse_itype(RawInstructionI inst) {
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

InstructionU::Type Decoder::parse_utype(RawInstructionU inst) {
    using enum InstructionU::Type;

    switch (inst.opcode) {
        case 0b0110111: return Lui;
        case 0b0010111: return Auipc;
    }

    throw DecodingException("invalid u-type instruction");
}

