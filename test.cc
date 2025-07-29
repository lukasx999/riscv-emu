#include <catch2/catch_test_macros.hpp>

#include "decoder.hh"
#include "cpu.hh"
#include "memory.hh"
#include "main.hh"

TEST_CASE("cpu") {

    // TODO:
    // Memory memory;
    // CPU cpu(memory);
    //
    // SECTION("addi") {
    //     cpu.m_registers.set(Register::A1, 5);
    //     InstructionI inst { InstructionI::Type::Addi, Register::A0, Register::A1, 3 };
    //     cpu.execute(inst);
    //     REQUIRE(cpu.m_registers.get(Register::A0) == 8);
    // }
    //
    // SECTION("Xori") {
    //     cpu.m_registers.set(Register::A1, 5);
    //     InstructionI inst { InstructionI::Type::Xori, Register::A0, Register::A1, 3 };
    //     cpu.execute(inst);
    //     REQUIRE(cpu.m_registers.get(Register::A0) == 6);
    // }

}

TEST_CASE("utils") {

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

static void test_decoder_itype(uint32_t raw_instruction, InstructionI::Type type,
                         int imm, Register rd, Register rs1) {
    auto inst = Decoder::decode(raw_instruction);
    REQUIRE(std::holds_alternative<InstructionI>(inst));
    auto i = std::get<InstructionI>(inst);
    REQUIRE(i.m_imm == imm);
    REQUIRE(i.m_type == type);
    REQUIRE(i.m_rd == rd);
    REQUIRE(i.m_rs1 == rs1);
}

TEST_CASE("decoder") {
    using enum InstructionI::Type;
    using enum Register;

    // addi t2,t0,45
    test_decoder_itype(0x02d28393, Addi, 45, T2, T0);

    // xori s2,s11,2000
    test_decoder_itype(0x7d0dc913, Xori, 2000, S2, S11);

    // ori s0,s1,167
    test_decoder_itype(0x0a74e413, Ori, 167, S0, S1);

    // andi t2,a2,1000
    test_decoder_itype(0x3e867393, Andi, 1000, T2, A2);

    // srli t4,t1,0x2
    test_decoder_itype(0x00235e93, Srli, 2, T4, T1);

    // srai t5,t1,0x2
    test_decoder_itype(0x40235f13, Srai, 2, T5, T1);

}
