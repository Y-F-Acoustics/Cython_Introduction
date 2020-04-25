from libc.stdio cimport *

cdef public void greeting():
    printf("Hello, world!")


if __name__ == "__main__":
    greeting()