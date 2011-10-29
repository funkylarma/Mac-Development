//
//  main.c
//  squareIt
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

void SquareIt(int number, int *squarePtr);

int main (int argc, const char * argv[])
{
    int square;
    
    SquareIt(5, &square);
    
    printf("5 squared is %d.\n", square);
    
    return 0;
}

void SquareIt(int number, int *squarePtr) {
    *squarePtr = number * number;
}