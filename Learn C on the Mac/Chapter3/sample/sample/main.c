//
//  main.c
//  sample
//
//  Created by Adam Chamberlin on 11/10/2011.
//  Copyright 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    int number, sum;
    
    sum = 0;
    
    for ( number = 0; number <= 10; number++ ) {
        sum += number;
    }
    
    printf("The sum of the numbers from 1 to 10 is %d", sum);
    
    return 0;
}

