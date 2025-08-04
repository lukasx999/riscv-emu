#include <cmath>
#include <ranges>
#include <algorithm>

#include <catch2/catch_test_macros.hpp>

#include "decoder.hh"
#include "cpu.hh"
#include "memory.hh"
#include "util.hh"

namespace {

template <typename T> requires
    std::same_as<T, uint8_t>  ||
    std::same_as<T, uint16_t> ||
    std::same_as<T, uint32_t>
void test_cpu_load(CPU& cpu, InstructionI::Type type, std::type_identity_t<T> value) {

    using enum InstructionI::Type;
    using enum Register;

    auto valid_types = { Lb, Lh, Lw, Lbu, Lhu };
    assert(std::ranges::any_of(valid_types, [&](InstructionI::Type t) {
        return t == type;
    }));

    cpu.m_memory.set<T>(0x0, value);
    cpu.m_registers.set(T1, 0x0);
    InstructionI inst(type, T0, T1, 0);
    cpu.execute(inst);

    REQUIRE(cpu.m_registers.get(T0) == value);
}

void test_cpu_itype(CPU& cpu, InstructionI::Type type, Word input,
                           int16_t imm, Word output) {

    using enum Register;

    auto int12_max = std::pow(2, 12)/2 - 1;
    assert(imm <= int12_max);
    cpu.m_registers.set(A1, input);
    InstructionI inst { type, A0, A1, imm };
    cpu.execute(inst);
    REQUIRE(cpu.m_registers.get(A0) == output);
}

template <typename T> requires
    std::same_as<T, uint8_t>  ||
    std::same_as<T, uint16_t> ||
    std::same_as<T, uint32_t>
void test_cpu_stype(CPU& cpu, InstructionS::Type type, Word address,
                           uint16_t addr_offset, std::type_identity_t<T> value) {

    using enum Register;

    cpu.m_registers.set(T0, value);
    cpu.m_registers.set(T1, address);
    InstructionS inst(type, T1, T0, addr_offset);
    cpu.execute(inst);

    REQUIRE(cpu.m_memory.get<T>(address) == value);
}

}

TEST_CASE("cpu") {
    using enum InstructionI::Type;
    using enum InstructionS::Type;
    using enum Register;

    Memory memory;
    CPU cpu(memory);

    SECTION("itype") {
        test_cpu_itype(cpu, Addi, 5, 3, 8);
        test_cpu_itype(cpu, Addi, std::numeric_limits<Word>::max(), 1, 0);
        test_cpu_itype(cpu, Addi, 5, -3, 2);
        test_cpu_itype(cpu, Addi, 0, -2047, -2047);
        test_cpu_itype(cpu, Addi, 0, -2048, -2048);
        test_cpu_itype(cpu, Addi, 0, 2047, 2047);
        test_cpu_itype(cpu, Addi, 47, 2000, 2047);
        test_cpu_itype(cpu, Addi, -5, -3, -8);
        test_cpu_itype(cpu, Xori, 5, 3, 6);
        test_cpu_itype(cpu, Ori, 5, 7, 7);
        test_cpu_itype(cpu, Andi, 123, 6, 2);
        test_cpu_itype(cpu, Slli, 16, 1, 32);
        test_cpu_itype(cpu, Slli, 78, 6, 4992);
        test_cpu_itype(cpu, Srli, 16, 1, 8);
        test_cpu_itype(cpu, Srli, 432432, 12, 105);
        test_cpu_itype(cpu, Srai, -66, 5, -3);
        test_cpu_itype(cpu, Slti, 1, 1, 0);
        test_cpu_itype(cpu, Slti, 1, 2, 1);
        test_cpu_itype(cpu, Slti, -10, 999, 1);
        test_cpu_itype(cpu, Sltiu, 10, 999, 1);

        test_cpu_load<uint8_t>(cpu, Lb, 45);
        test_cpu_load<uint8_t>(cpu, Lb, std::numeric_limits<int8_t>::max());
        test_cpu_load<uint16_t>(cpu, Lh, 45);
        // test_cpu_load<uint16_t>(cpu, Lh, std::numeric_limits<int16_t>::max());
        test_cpu_load<uint32_t>(cpu, Lw, 45);
        // test_cpu_load<uint32_t>(cpu, Lw, std::numeric_limits<int32_t>::max());
        test_cpu_load<uint8_t>(cpu, Lbu, 45);
        test_cpu_load<uint8_t>(cpu, Lbu, std::numeric_limits<uint8_t>::max());
        test_cpu_load<uint16_t>(cpu, Lhu, 45);
        test_cpu_load<uint16_t>(cpu, Lhu, std::numeric_limits<uint16_t>::max());

    }

    SECTION("stype") {
        test_cpu_stype<uint8_t>(cpu, Sb, 0x0, 0, 100);
        test_cpu_stype<uint8_t>(cpu, Sb, 0x0, 0, std::numeric_limits<uint8_t>::max());
        test_cpu_stype<uint16_t>(cpu, Sh, 0x0, 0, 123);
        test_cpu_stype<uint16_t>(cpu, Sh, 0x0, 0, std::numeric_limits<uint16_t>::max());
        test_cpu_stype<uint32_t>(cpu, Sw, 0x0, 0, 423);
        test_cpu_stype<uint32_t>(cpu, Sw, 0x0, 0, std::numeric_limits<uint32_t>::max());
    }

}

TEST_CASE("utils") {

    SECTION("encode_instruction") {
        REQUIRE((*encode_instruction("ecall"))[0] == 0x00000073);
        REQUIRE((*encode_instruction("ebreak"))[0] == 0x00100073);
        REQUIRE((*encode_instruction("addi t0, zero, 123"))[0] == 0x07b00293);
        REQUIRE((*encode_instruction("li a0, 1"))[0] == (*encode_instruction("addi a0, zero, 1"))[0]);
    }

    SECTION("extract_bits") {
        REQUIRE(extract_bits(0b0000111000, 3, 3) == 0b111);
        REQUIRE(extract_bits(0b1, 0, 1) == 0b1);
        REQUIRE(extract_bits(0b100000, 5, 1) == 0b1);
    }

    SECTION("set_bits") {
        REQUIRE(set_bits(0b0, 0, 1, true) == 0b1);
        REQUIRE(set_bits(0b000, 0, 3, true) == 0b111);
        REQUIRE(set_bits(0b001, 1, 2, true) == 0b111);
        REQUIRE(set_bits(0b0001111, 2, 5, true) == 0b1111111);
        REQUIRE(set_bits(0b1, 0, 1, false) == 0b0);
        REQUIRE(set_bits(0b110, 1, 2, false) == 0b000);
        REQUIRE(set_bits(0b111100, 3, 3, false) == 0b000100);
        REQUIRE(set_bits(0b111110000101, 12, 10, true) == 0b1111111111111110000101);
        REQUIRE(set_bits(0b0000000000000000000000000000000000000000000000000000001000111000, 10, 54, true) == 0b1111111111111111111111111111111111111111111111111111111000111000);
    }

    SECTION("sign_extend") {
        REQUIRE(sign_extend(0b0000000000000000000000000000000000000000000000000000111110000101, 12) == 0b1111111111111111111111111111111111111111111111111111111110000101);
        REQUIRE(sign_extend(0b1011, 4) == 0b1111111111111111111111111111111111111111111111111111111111111011);
        REQUIRE(sign_extend(0b1, 1) == 0b1111111111111111111111111111111111111111111111111111111111111111);
        REQUIRE(sign_extend(0b0, 1) == 0b0);
        REQUIRE(sign_extend(0b0100, 5) == 0b0100);
    }

}

namespace {

void test_decoder_itype(std::string instruction, InstructionI::Type type,
                               Immediate12Bit imm, Register rd, Register rs1) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionI>(inst));
    auto i = std::get<InstructionI>(inst);
    REQUIRE(i.imm == imm);
    REQUIRE(i.type == type);
    REQUIRE(i.rd == rd);
    REQUIRE(i.rs1 == rs1);
}

void test_decoder_rtype(std::string instruction, InstructionR::Type type,
                               Register rd, Register rs1, Register rs2) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionR>(inst));
    auto i = std::get<InstructionR>(inst);
    REQUIRE(i.type == type);
    REQUIRE(i.rd == rd);
    REQUIRE(i.rs1 == rs1);
    REQUIRE(i.rs2 == rs2);
}

void test_decoder_stype(std::string instruction, InstructionS::Type type,
                               Register rs2, Register rs1, Immediate12Bit imm) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionS>(inst));
    auto i = std::get<InstructionS>(inst);
    REQUIRE(i.type == type);
    REQUIRE(i.imm == imm);
    REQUIRE(i.rs1 == rs1);
    REQUIRE(i.rs2 == rs2);
}

void test_decoder_jtype(std::string instruction, InstructionJ::Type type,
                               Register rd, Immediate21Bit imm) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionJ>(inst));
    auto i = std::get<InstructionJ>(inst);
    REQUIRE(i.type == type);
    REQUIRE(i.rd == rd);
    REQUIRE(i.imm == imm);
}

void test_decoder_btype(std::string instruction, InstructionB::Type type,
                        Register rs1, Register rs2, Immediate13Bit imm) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionB>(inst));
    auto i = std::get<InstructionB>(inst);
    REQUIRE(i.type == type);
    REQUIRE(i.rs1 == rs1);
    REQUIRE(i.rs2 == rs2);
    REQUIRE(i.imm == imm);
}

void test_decoder_utype(std::string instruction, InstructionU::Type type,
                        Register rd, Immediate20Bit imm) {
    auto raw_inst = encode_instruction(std::move(instruction));
    auto inst = Decoder::decode(raw_inst->front());
    REQUIRE(std::holds_alternative<InstructionU>(inst));
    auto i = std::get<InstructionU>(inst);
    REQUIRE(i.type == type);
    REQUIRE(i.rd == rd);
    REQUIRE(i.imm == imm);
}

}

TEST_CASE("decoder") {
    using enum InstructionR::Type;
    using enum InstructionI::Type;
    using enum InstructionS::Type;
    using enum InstructionB::Type;
    using enum InstructionU::Type;
    using enum InstructionJ::Type;
    using enum Register;

    SECTION("rtype") {
        test_decoder_rtype("add  t2, t1, t0", Add,  T2, T1, T0);
        test_decoder_rtype("sub  t2, t1, t0", Sub,  T2, T1, T0);
        test_decoder_rtype("xor  t2, t1, t0", Xor,  T2, T1, T0);
        test_decoder_rtype("or   x2, t1, t0", Or,   X2, T1, T0);
        test_decoder_rtype("and  t2, t3, t0", And,  T2, T3, T0);
        test_decoder_rtype("sll  t2, t1, t5", Sll,  T2, T1, T5);
        test_decoder_rtype("srl  t2, t1, t0", Srl,  T2, T1, T0);
        test_decoder_rtype("sra  t2, t1, t0", Sra,  T2, T1, T0);
        test_decoder_rtype("slt  t2, t1, t0", Slt,  T2, T1, T0);
        test_decoder_rtype("sltu t2, t1, t0", Sltu, T2, T1, T0);
    }

    SECTION("itype") {
        test_decoder_itype("addi  t2, t0,  45",    Addi,  45,    T2, T0);
        test_decoder_itype("addi  t2, t0,  -45",   Addi, -45,    T2, T0);
        test_decoder_itype("addi  t2, t0,  2047",  Addi,  2047,  T2, T0);
        test_decoder_itype("addi  t2, t0,  -2047", Addi, -2047,  T2, T0);
        test_decoder_itype("addi  t2, t0,  -2048", Addi, -2048,  T2, T0);
        test_decoder_itype("xori  s2, s11, 2000",  Xori,  2000,  S2, S11);
        test_decoder_itype("ori   s0, s1,  167",   Ori,   167,   S0, S1);
        test_decoder_itype("andi  t2, a2,  1000",  Andi,  1000,  T2, A2);
        test_decoder_itype("srli  t4, t1,  0x2",   Srli,  2,     T4, T1);
        test_decoder_itype("srai  t5, t1,  0x2",   Srai,  2,     T5, T1);
        test_decoder_itype("slti  t0, t1,  2045",  Slti,  2045,  T0, T1);
        test_decoder_itype("sltiu t0, t1,  2045",  Sltiu, 2045,  T0, T1);

        test_decoder_itype("lb  t0, 0(t1)", Lb,  0, T0, T1);
        test_decoder_itype("lh  t0, 0(t1)", Lh,  0, T0, T1);
        test_decoder_itype("lw  t0, 0(t1)", Lw,  0, T0, T1);
        test_decoder_itype("lbu t0, 0(t1)", Lbu, 0, T0, T1);
        test_decoder_itype("lhu t0, 0(t1)", Lhu, 0, T0, T1);

        test_decoder_itype("jalr t0, 123(t1)", Jalr, 123, T0, T1);

        test_decoder_itype("ecall",  Ecall,  0x0, X0, X0);
        test_decoder_itype("ebreak", Ebreak, 0x1, X0, X0);
    }

    SECTION("stype") {
        test_decoder_stype("sb t0, 0(t1)", Sb, T0, T1, 0);
        test_decoder_stype("sb t0, -5(t1)", Sb, T0, T1, -5);
        test_decoder_stype("sh t0, 0(t1)", Sh, T0, T1, 0);
        test_decoder_stype("sw a6, 0(s2)", Sw, A6, S2, 0);
    }

    SECTION("btype") {
        // assembler treats imm as aboslute address
        test_decoder_btype("beq  t0, t1, .+16",  Beq,  T0, T1, 16);
        test_decoder_btype("beq  t0, t1, .+32",  Beq,  T0, T1, 32);
        test_decoder_btype("beq  t0, t1, .+64",  Beq,  T0, T1, 64);
        test_decoder_btype("beq  t0, t1, .+128", Beq,  T0, T1, 128);
        test_decoder_btype("bne  t0, t1, .+16",  Bne,  T0, T1, 16);
        test_decoder_btype("bne  t0, t1, .+32",  Bne,  T0, T1, 32);
        test_decoder_btype("bne  t0, t1, .+64",  Bne,  T0, T1, 64);
        test_decoder_btype("bne  t0, t1, .+128", Bne,  T0, T1, 128);
        test_decoder_btype("blt  t0, t1, .+16",  Blt,  T0, T1, 16);
        test_decoder_btype("bge  t0, t1, .+16",  Bge,  T0, T1, 16);
        test_decoder_btype("bltu t0, t1, .+16",  Bltu, T0, T1, 16);
        test_decoder_btype("bgeu t0, t1, .+16",  Bgeu, T0, T1, 16);
    }

    SECTION("utype") {
        test_decoder_utype("lui t0, 1", Lui, T0, 1);
        test_decoder_utype("lui t0, 524287", Lui, T0, 524287);
        test_decoder_utype("auipc t0, 1", Auipc, T0, 1);
    }

    SECTION("jtype") {
        // assembler treats imm as aboslute address
        test_decoder_jtype("jal t0, .+2", Jal, T0, 2);
        test_decoder_jtype("jal t0, .+4", Jal, T0, 4);
        test_decoder_jtype("jal t0, .+16", Jal, T0, 16);
        test_decoder_jtype("jal t0, .+32", Jal, T0, 32);
        test_decoder_jtype("jal t0, .+64", Jal, T0, 64);
        test_decoder_jtype("jal t0, .+128", Jal, T0, 128);
        test_decoder_jtype("jal t0, .-128", Jal, T0, -128);
        test_decoder_jtype("jal t0, .-64", Jal, T0, -64);
    }


}
