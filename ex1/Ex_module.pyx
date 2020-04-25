import math

def isprime_cython(n, maxiter):
    ans = 0
    for k in range(maxiter):
        if n > 1 or n % 2 != 0:
            for i in range(2, math.floor(math.sqrt(n))+1):
                if n % i != 0:
                    ans += 1

    return ans
