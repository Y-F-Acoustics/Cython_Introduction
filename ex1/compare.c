#include <stdio.h>
#include <math.h>
#include <time.h>

int isprime_c(int n, int maxiter);

int main(void){
    clock_t start, end;

    start = clock();
    printf("%d\n", isprime_c(2147483647, 1000));
    end = clock();

    printf("Elappsed time (native C) :%lfs\n", (double)(end-start)/CLOCKS_PER_SEC);
    return 0;
}

int isprime_c(int n, int maxiter){
    int i = 0;
    int k = 0;
    int ans = 0;
    int x = (int)floor(sqrt(n))+1;

    for(k = 0; k < maxiter; k++){
        if(n > 1 || n % 2 != 0){
            for(i = 2; i < x; i++){
                if(n % i != 0){
                    ans += 1;
                }
            }
        }
    }

    return ans;
}