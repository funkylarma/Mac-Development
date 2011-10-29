//
//  main.c
//  typeOverflow
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    unsigned char counter;
    
    for (counter = 1; counter <= 1000; counter++) {
        printf("%d\n", counter);
    }
    return 0;
}

