#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int lengthOfNumber(N){
    int intN = N;
    char intNToStr[15];
    sprintf(intNToStr, "%d", intN);

    int numLength = strlen(intNToStr);

    //printf("%d\n", numLength);

    return numLength;
}

int findDigits(int N){
    int intN = N;

    int numLength = floor(log10(abs(N))) + 1;

    // int numLength = strlen(intNToStr);

    char intNToStr[numLength];
    sprintf(intNToStr, "%d", intN);

/////////////////////////////////////////

    int divisibilityCounter = 0;
    for (int i = 0; i < numLength; i++){
        int integer = atoi(i)
        if (N % integer) == 0){
            divisibilityCounter += 1;
        }
    }
    printf("%d\n", divisibilityCounter);
    return divisibilityCounter;
}

int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return findDigits(11111);
}
