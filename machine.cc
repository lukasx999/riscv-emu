#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        BinaryInstruction raw_inst = fetch();
        Instruction inst = m_cpu.m_decoder.decode(raw_inst);
        m_cpu.execute(inst);
        m_cpu.m_pc += sizeof(BinaryInstruction);
        std::println("{}", inst);
    }
}

BinaryInstruction Machine::fetch() const {
  return *std::bit_cast<BinaryInstruction*>(m_cpu.m_pc);
}

void Machine::load_binary(const ElfExecutable& exec) {

    auto segments = exec.get_loadable_segments();

    // TODO: if binary is PIC, load it anywhere, if not:
    // either load emu (pic) and binary (non-pic) at the same time
    // or load emu at higher address so there are no address conflicts

    // just remove offset 0x40000 from no-pie binaries in the cpu

    for (auto& segment : segments) {
        std::println("Segment Address: {:x}", segment.m_virt_addr);
        std::println("Segment Size: {}", segment.m_span.size());
        load_segment(segment);
    }

    std::println("{} Segment(s) loaded", segments.size());
    std::println("Entrypoint: {:x}", exec.get_entry_point());

    m_cpu.m_pc = exec.get_entry_point();
    auto stack_begin = std::bit_cast<Word>(m_stack->data());
    m_cpu.m_registers.set(Register::Sp, stack_begin);
    m_cpu.m_registers.set(Register::Fp, stack_begin);
}

void Machine::load_segment(const LoadableSegment& segment) {

    auto* virt = std::bit_cast<void*>(segment.m_virt_addr);
    size_t size = segment.m_span.size();

    // TODO: dont forget to munmap()
    void* mem = mmap(virt, size, PROT_WRITE,
                     MAP_FIXED | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

    assert(mem != MAP_FAILED);
    assert(mem == virt);

    // TODO: map actual portion of the binary into memory
    std::memcpy(mem, segment.m_span.data(), size);

    // elf.h and sys/mman.h r/w/x flags have the same values
    mprotect(mem, size, segment.m_flags);
}
