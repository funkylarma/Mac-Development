//
//  main.c
//  Coolness
//
//  Created by Adam Chamberlin on 07/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    
    for (int i = 99; i >= 0; i -= 3) {
        printf("%d ", i);
        if (i % 5 == 0) {
            printf("Found one!");
        }
        printf("\n");
    }
    
    return 0;
}

