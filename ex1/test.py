import Ex_module
import Ex_module_py
import Ex_module_libc
import time

t1 = time.time()
print(Ex_module_py.isprime(2147483647, 1000))
t2 = time.time()

print("Elappsed time (native Python) :", t2-t1, "s")


t1 = time.time()
print(Ex_module.isprime_cython(2147483647, 1000))
t2 = time.time()

print("Elappsed time (cython) :", t2-t1, "s")


t1 = time.time()
print(Ex_module_libc.isprime_nativec(2147483647, 1000))
t2 = time.time()

print("Elappsed time (w/libc) :", t2-t1, "s")