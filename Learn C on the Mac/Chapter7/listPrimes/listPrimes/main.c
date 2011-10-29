//
//  main.c
//  listPrimes
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool IsItPrime(int candidate);

int main (int argc, const char * argv[])
{

    int i;
    
    for (i = 1;  i <= 50; i++) {
        if (IsItPrime(i)) {
            printf("%d is a prime number.\n", i);
        }
    }
    
    return 0;
}

bool IsItPrime(int candidate) {
    int i, last;
    if (candidate < 2) {
        return false;
    } else {
        last = sqrt(candidate);
        
        for (i = 2; i <= last; i++) {
            if ((candidate % i) == 0) {
                return false;
            }
        }
    }
    
    return true;
}