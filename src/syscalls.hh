#pragma once

#include <unistd.h>

#include "util.hh"
#include "cpu.hh"

class SyscallWrappers {
    CPU& m_cpu;

public:
    SyscallWrappers(CPU& cpu) : m_cpu(cpu) { }

    void fstat(int fd, Word statbuf_addr);

    void write(int fd, Word buf, size_t len) {
        set_ret(::write(fd, m_cpu.m_memory.get_host_ptr(buf), len));
    }

private:
    void set_ret(Word value) {
        m_cpu.m_registers.set(Register::A0, value);
    }

};

