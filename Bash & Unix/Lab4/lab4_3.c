#include <stdio.h>



int main() {

    long long M; 

    int i, j;     

    printf("Enter the number (M) and two integers (i, j): ");

    scanf("%lld %d %d", &M, &i, &j);


    long long divisor = 1;

    for (int k = 0; k < i; k++) {

        divisor *= 10;

    }

    long long mod_value = 1;

    for (int k = 0; k <= j; k++) {
        mod_value *= 10;

    }

    long long result = (M % mod_value) / divisor;
    printf("The digits from position %d to %d are: %lld\n", i, j, result);
    return 0;

}


