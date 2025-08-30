#include <cassert>
#include <cmath>
#include <cstdlib>

#include <unistd.h>
#include <sys/stat.h>

#include "util.hh"
#include "cpu.hh"

// from: linux/include/uapi/asm-generic/unistd.h
enum Syscall {
    Exit=93,
    Write=64,
    Fstat=80,
    Brk=214,
};

template <>
struct std::formatter<Syscall> : std::formatter<std::string> {
    auto format(const Syscall& syscall, std::format_context& ctx) const {
        auto str = [&] {
            switch (syscall) {
                case Exit: return STRINGIFY(Exit);
                case Write: return STRINGIFY(Write);
                case Fstat: return STRINGIFY(Fstat);
                case Brk: return STRINGIFY(Brk);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

struct Executor {

    class CPU& m_cpu;

    void operator()(const InstructionR& inst) {
        Word rs1 = m_cpu.m_registers.get(inst.rs1);
        Word rs2 = m_cpu.m_registers.get(inst.rs2);

        auto set_rd = [&](Word value) {
            m_cpu.m_registers.set(inst.rd, value);
        };

        switch (inst.type) {
            using enum InstructionR::Type;

            case Add:
                set_rd(rs1 + rs2);
                break;

            case Addw:
                set_rd(static_cast<int32_t>(rs1 + rs2));
                break;

            case Sub:
                set_rd(rs1 - rs2);
                break;

            case Subw:
                set_rd(static_cast<int32_t>(rs1 - rs2));
                break;

            case Xor:
                set_rd(rs1 ^ rs2);
                break;

            case Or:
                set_rd(rs1 | rs2);
                break;

            case And:
                set_rd(rs1 & rs2);
                break;

            case Sll:
                set_rd(rs1 << rs2);
                break;

            case Sllw:
                set_rd(static_cast<int32_t>(rs1 << extract_bits(rs2, 0, 5)));
                break;

            case Srl:
                set_rd(rs1 >> rs2);
                break;

            case Srlw:
                set_rd(static_cast<int32_t>(static_cast<uint32_t>(rs1) >> extract_bits(rs2, 0, 5)));
                break;

            case Sra:
                set_rd(static_cast<SignedWord>(rs1) >> rs2);
                break;

            case Sraw:
                set_rd(static_cast<int32_t>(rs1) >> rs2);
                break;

            case Slt:
                set_rd(static_cast<SignedWord>(rs1) < static_cast<SignedWord>(rs2) ? 1 : 0);
                break;

            case Sltu:
                set_rd(rs1 < rs2 ? 1 : 0);
                break;

        }
    }

    void operator()(const InstructionI& inst) {

        Word rs1 = m_cpu.m_registers.get(inst.rs1);
        SignedWord imm = inst.imm;

        auto set_rd = [&](Word value) {
            m_cpu.m_registers.set(inst.rd, value);
        };

        switch (inst.type) {
            using enum InstructionI::Type;

            case Addi:
                set_rd(rs1 + imm);
                break;

            case Addiw:
                set_rd(static_cast<int32_t>(extract_bits(rs1 + imm, 0, 32)));
                break;

            case Xori:
                set_rd(rs1 ^ imm);
                break;

            case Ori:
                set_rd(rs1 | imm);
                break;

            case Andi:
                set_rd(rs1 & imm);
                break;

            case Slli:
                set_rd(rs1 << imm);
                break;

            case Slliw:
                set_rd(static_cast<int32_t>(rs1 << imm));
                break;

            case Srli:
                set_rd(rs1 >> imm);
                break;

            case Srliw:
                set_rd(static_cast<int32_t>(static_cast<uint32_t>(rs1) >> imm));
                break;

            case Srai:
                set_rd(static_cast<SignedWord>(rs1) >> imm);
                break;

            case Sraiw:
                set_rd(static_cast<int32_t>(rs1) >> imm);
                break;

            case Slti:
                set_rd(static_cast<SignedWord>(rs1) < imm ? 1 : 0);
                break;

            case Sltiu:
                set_rd(rs1 < static_cast<Word>(imm) ? 1 : 0);
                break;

            case Lb:
                set_rd(m_cpu.m_memory.get<int8_t>(rs1 + imm));
                break;

            case Lh:
                set_rd(m_cpu.m_memory.get<int16_t>(rs1 + imm));
                break;

            case Lw:
                set_rd(m_cpu.m_memory.get<int32_t>(rs1 + imm));
                break;

            case Ld:
                set_rd(m_cpu.m_memory.get<uint64_t>(rs1 + imm));
                break;

            case Lbu:
                set_rd(m_cpu.m_memory.get<uint8_t>(rs1 + imm));
                break;

            case Lhu:
                set_rd(m_cpu.m_memory.get<uint16_t>(rs1 + imm));
                break;

            case Lwu:
                set_rd(m_cpu.m_memory.get<uint32_t>(rs1 + imm));
                break;

            case Jalr:
                set_rd(m_cpu.m_pc + sizeof(BinaryInstruction));
                // NOTE: jalr is supposed to clear LSB
                m_cpu.m_pc = (rs1 + imm) & ~1;
                break;

            case Ecall:
                forward_syscall();
                break;

            case Ebreak:
                __asm__ volatile ("int3");
                break;
        }
    }

    void operator()(const InstructionS& inst) {
        Word address = m_cpu.m_registers.get(inst.rs1);
        Word value = m_cpu.m_registers.get(inst.rs2);
        SignedWord offset = inst.imm;

        switch (inst.type) {
            using enum InstructionS::Type;

            case Sb:
                m_cpu.m_memory.set<uint8_t>(address+offset, value);
                break;

            case Sh:
                m_cpu.m_memory.set<uint16_t>(address+offset, value);
                break;

            case Sw:
                m_cpu.m_memory.set<uint32_t>(address+offset, value);
                break;

            case Sd:
                m_cpu.m_memory.set<uint64_t>(address+offset, value);
                break;

        }

    }

    void operator()(const InstructionB& inst) {

        Word rs1 = m_cpu.m_registers.get(inst.rs1);
        Word rs2 = m_cpu.m_registers.get(inst.rs2);
        SignedWord imm = inst.imm;

        switch (inst.type) {
            using enum InstructionB::Type;

            case Beq:
                if (rs1 == rs2)
                    m_cpu.m_pc += imm;
                break;

            case Bne:
                if (rs1 != rs2)
                    m_cpu.m_pc += imm;
                break;

            case Blt:
                if (static_cast<SignedWord>(rs1) < static_cast<SignedWord>(rs2))
                    m_cpu.m_pc += imm;
                break;

            case Bge:
                if (static_cast<SignedWord>(rs1) >= static_cast<SignedWord>(rs2))
                    m_cpu.m_pc += imm;
                break;

            case Bltu:
                if (rs1 < rs2)
                    m_cpu.m_pc += imm;
                break;

            case Bgeu:
                if (rs1 >= rs2)
                    m_cpu.m_pc += imm;
                break;

        }

    }

    void operator()(const InstructionU& inst) {

        SignedWord imm = inst.imm;

        auto set_rd = [&](Word value) {
            m_cpu.m_registers.set(inst.rd, value);
        };

        switch (inst.type) {
            using enum InstructionU::Type;

            case Lui:
                set_rd(imm << 12);
                break;

            case Auipc:
                set_rd(m_cpu.m_pc + (imm << 12));
                break;

        }
    }

    void operator()(const InstructionJ& inst) {
        auto imm = inst.imm;

        auto set_rd = [&](Word value) {
            m_cpu.m_registers.set(inst.rd, value);
        };

        switch (inst.type) {
            using enum InstructionJ::Type;

            case Jal:
                set_rd(m_cpu.m_pc + sizeof(BinaryInstruction));
                m_cpu.m_pc += imm;
                break;
        }

    }

    void operator()(const InstructionFence& inst) {
        switch (inst.type) {
            using enum InstructionFence::Type;

            case Fence:
                // NOTE: there are no other harts or coprocessors present
                // in this implementation, so fence does not need to provide
                // any functionality
                break;
        }
    }

private:
    void forward_syscall() const {

        auto syscall_nr = m_cpu.m_registers.get(Register::A7);
        auto arg0 = m_cpu.m_registers.get(Register::A0);
        auto arg1 = m_cpu.m_registers.get(Register::A1);
        auto arg2 = m_cpu.m_registers.get(Register::A2);

        auto set_ret = [&](Word ret) {
            m_cpu.m_registers.set(Register::A0, ret);
        };

        log("Executing Syscall: {}", static_cast<Syscall>(syscall_nr));

        switch (syscall_nr) {
            case Syscall::Exit: {
                m_cpu.m_exit_status = arg0;
                m_cpu.m_should_exit = true;
            } break;

            case Syscall::Write:
                set_ret(write(arg0, m_cpu.m_memory.get_host_ptr(arg1), arg2));
                break;

            case Syscall::Brk:
                // TODO: emulate heap
                break;

            case Syscall::Fstat: {
                // BUG: struct stat is 144 bytes long so it overrides the return address on top of the stack
                // auto statbuf = m_cpu.m_memory.get_host_ptr(arg1);
                // set_ret(fstat(arg0, reinterpret_cast<struct stat*>(statbuf)));

                // NOTE: struct stat definitions differ for x86-64 and riscv
                // TODO: find correct struct stat implementation for riscv
                // HACK: this is the generic version from linux/include/uapi/asm-generic/stat.h
                // TODO: maybe #include with namespace?
                struct riscv64_stat {
                    unsigned long	st_dev;		/* Device.  */
                    unsigned long	st_ino;		/* File serial number.  */
                    unsigned int	st_mode;	/* File mode.  */
                    unsigned int	st_nlink;	/* Link count.  */
                    unsigned int	st_uid;		/* User ID of the file's owner.  */
                    unsigned int	st_gid;		/* Group ID of the file's group. */
                    unsigned long	st_rdev;	/* Device number, if device.  */
                    unsigned long	__pad1;
                    long		st_size;	/* Size of file, in bytes.  */
                    int		st_blksize;	/* Optimal block size for I/O.  */
                    int		__pad2;
                    long		st_blocks;	/* Number 512-byte blocks allocated. */
                    long		st_atime_;	/* Time of last access.  */
                    unsigned long	st_atime_nsec;
                    long		st_mtime_;	/* Time of last modification.  */
                    unsigned long	st_mtime_nsec;
                    long		st_ctime_;	/* Time of last status change.  */
                    unsigned long	st_ctime_nsec;
                    unsigned int	__unused4;
                    unsigned int	__unused5;
                };

                struct stat statbuf;
                set_ret(fstat(arg0, &statbuf));
                struct riscv64_stat rv_statbuf;
                m_cpu.m_memory.set<struct riscv64_stat>(arg1, rv_statbuf);

            } break;

            default:
                throw std::runtime_error(std::format("unimplemented syscall: {}", syscall_nr));
        }
    }

};

void CPU::execute(const Instruction& instruction) {
    log("{}", instruction);
    std::visit(Executor(*this), instruction);
}
