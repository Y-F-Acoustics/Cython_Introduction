from libc.math cimport *
cimport cython

@cython.cdivision(True)
def isprime_nativec(int n, int maxiter)->int:
    cdef int i = 0
    cdef int k = 0
    cdef int ans = 0
    cdef int x = <int>(floor(sqrt(n)))+1
    
    while k < maxiter:
        i = 2

        if n > 1 or n % 2 != 0:
            while i < x:
                if n % i != 0:
                    ans += 1

                i += 1
        k += 1

    return ans