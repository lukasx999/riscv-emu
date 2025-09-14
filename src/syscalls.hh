#pragma once

#include <unistd.h>

#include "util.hh"
#include "cpu.hh"

class SyscallWrappers {
    CPU& m_cpu;

public:
    SyscallWrappers(CPU& cpu) : m_cpu(cpu) { }

    // TODO: set return value at call site in cpu.cc, and return the value from the wrapper methods
    void fstat(int fd, Word statbuf_addr);

    void write(int fd, Word buf, size_t len) {
        set_ret(::write(fd, reinterpret_cast<const char*>(buf), len));
    }

    void close(int fd) {
        set_ret(::close(fd));
    }

    void brk(Word addr) {
        set_ret(::brk(reinterpret_cast<void*>(addr)));
    }

private:
    void set_ret(Word value) {
        m_cpu.m_registers.set(Register::A0, value);
    }

};

