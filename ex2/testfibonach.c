#include "Python.h"
#include "fibonach.h"
#include <stdio.h>
#include <limits.h>
#include <stdint.h>

int main(void){
    uint8_t i = 0;

    printf("%llu\n", UINT64_MAX);

    for(i = 1; i <= 100; i++){
        printf("a[%u] = %llu\n", i, fibc(i));
    }

    return 0;
}