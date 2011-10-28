//
//  main.c
//  loopTester
//
//  Created by Adam Chamberlin on 28/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{

    int i;
    
    i = 0;
    while (i++ < 4) {
        printf("while: i=%d\n", i);
    }
    
    printf("After while loop, i=%d.\n\n", i);
    
    for (i = 0; i < 4; i++) {
        printf("first for: i=%D\n", i);
    }
    
    printf("After first for loop, i=%d\n\n", i);
    
    for (i = 1; i <= 4; i++) {
        printf("second for: i=%d\n", i);
    }
    
    printf("After second for loop, i=%d.\n", i);
    
    return 0;
}

