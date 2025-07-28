#include <cstdlib>
#include <cstring>
#include <print>
#include <vector>

#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        BinaryInstruction raw_inst = fetch();
        Instruction inst = m_cpu.m_decoder.decode(raw_inst);
        m_cpu.execute(inst);
        m_cpu.m_pc += sizeof(BinaryInstruction);
        log("{}", inst);
    }
}

[[nodiscard]] BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.m_pc);
}

void Machine::load_binary(const ElfExecutable& exec) {

    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses, in ascending order, so we can take the address
    // of the first one as an offset

    auto segments = exec.get_load_segments();
    m_memory.m_segments = segments;

    size_t program_offset = segments.front().m_virt_addr;

    // TODO: move to memory.hh
    size_t offset = 0;
    for (auto& segment : segments) {

        log("Segment Address: {:x}", segment.m_virt_addr);
        log("Segment Size: {:x}", segment.m_span.size());

        size_t size = segment.m_span.size();
        std::memcpy(m_memory.get_data()+offset, segment.m_span.data(), size);
        offset += size;
    }

    log("{} Segment(s) loaded", segments.size());

    m_cpu.m_pc = exec.get_entry_point() - program_offset;
    m_cpu.m_registers.set(Register::Sp, offset);
    m_cpu.m_registers.set(Register::Fp, offset);
}
