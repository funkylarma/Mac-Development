//
//  main.c
//  nextPrime
//
//  Created by Adam Chamberlin on 28/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>
#include <math.h>

int main (int argc, const char * argv[])
{

    bool isPrime;
    int startingPoint, candidate, last, i;
    
    startingPoint = 235;
    
    if (startingPoint < 2) {
        candidate = 2;
    }
    else if (startingPoint == 2) {
        candidate = 3;
    }
    else {
        candidate = startingPoint;
        if (candidate % 2 == 0) {
            candidate --;
        }
        do {
            isPrime = true;
            candidate += 2;
            last = sqrt(candidate);
            
            for (i = 3; i <= last; i += 2) {
                if ((candidate % i) == 0) {
                    isPrime = false;
                }
            }
        } while (!isPrime);
    }
    
    printf("The next prime number after %d is %d. Happy?\n", startingPoint, candidate);
    
    return 0;
}

