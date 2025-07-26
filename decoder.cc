#include <cassert>
#include <bit>
#include <stdexcept>

#include "decoder.hh"

[[nodiscard]]
Instruction Decoder::decode(BinaryInstruction instruction) {

    auto format = decode_format(instruction);

    switch (format) {
        using enum InstructionFormat;
        case IType: return decode_itype(instruction);
        case UType: return decode_utype(instruction);

        default:
            throw std::runtime_error("unimplemented instruction format"); // TODO:
    }

    throw std::runtime_error("invalid instruction type");
}

[[nodiscard]]
InstructionFormat Decoder::decode_format(BinaryInstruction inst) {

    int opcode_len = 7;
    uint8_t opcode = extract_bits(inst, 0, opcode_len);

    switch (opcode) {
        case 0b0010011:
        case 0b0000011:
        case 0b1110011:
            return InstructionFormat::IType;

        case 0b0110111:
        case 0b0010111:
            return InstructionFormat::UType;

        default:
            throw std::runtime_error("unimplemented instruction format"); // TODO:
    }

    throw DecodingException("invalid instruction format");
}

[[nodiscard]] Instruction Decoder::decode_itype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionI>(inst);

    return InstructionI(
        parse_itype(raw_inst),
        static_cast<Register>(raw_inst.rd),
        static_cast<Register>(raw_inst.rs1),
        raw_inst.imm
    );
}

[[nodiscard]] Instruction Decoder::decode_utype(BinaryInstruction inst) {
    auto raw_inst = std::bit_cast<RawInstructionU>(inst);

    return InstructionU(
        parse_utype(raw_inst),
        static_cast<Register>(raw_inst.rd),
        raw_inst.imm
    );
}

[[nodiscard]] InstructionU::Type Decoder::parse_utype(RawInstructionU inst) {
    using enum InstructionU::Type;

    switch (inst.opcode) {
        case 0b0110111: return Lui;
        case 0b0010111: return Auipc;
    }

    throw DecodingException("invalid u-type instruction");
}

[[nodiscard]] InstructionI::Type Decoder::parse_itype(RawInstructionI inst) {
    using enum InstructionI::Type;

    switch (inst.opcode) {
        case 0b0010011:
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
                    if (inst.imm == 0x0)
                        return Ecall;
                    else if (inst.imm == 0x1)
                        return Ebreak;
            }
            break;
    }

    throw DecodingException("invalid i-type instruction");
}

[[nodiscard]] constexpr
uint64_t Decoder::extract_bits(uint64_t value, int start, int size) {
    int num = 0;
    for (auto i=0; i < size; ++i)
        num |= 1 << i;

    return (value >> start) & num;
}
