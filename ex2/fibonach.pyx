from __future__ import print_function
from libc.stdint cimport *

def fib(uint8_t n):
    cdef:
        uint64_t a = 0
        uint64_t b = 1

    while b < n:
        a, b = b, a + b

    return b


cdef public uint64_t fibc(uint8_t n):
    cdef:
        uint64_t a = 0
        uint64_t b = 1

    while b < n:
        a, b = b, a + b

    return b