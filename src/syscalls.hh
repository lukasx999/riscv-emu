#pragma once

#include "util.hh"
#include "cpu.hh"

class SyscallWrappers {
    CPU& m_cpu;

public:
    SyscallWrappers(CPU& cpu) : m_cpu(cpu) { }

    void fstat(int fd, Word address);

private:
    void set_ret(Word value) {
        m_cpu.m_registers.set(Register::A0, value);
    }

};

