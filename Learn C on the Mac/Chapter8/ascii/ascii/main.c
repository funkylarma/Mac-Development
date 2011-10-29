//
//  main.c
//  ascii
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

void PrintChars(char low, char high);

int main (int argc, const char * argv[])
{
    PrintChars(32, 47);
    PrintChars(48, 57);
    PrintChars(58, 64);
    PrintChars(65, 90);
    PrintChars(91, 96);
    PrintChars(97, 122);
    PrintChars(123, 126);
    
    return 0;
}

void PrintChars(char low, char high) {
    char c;
    
    printf("%d to %d ---> ", low, high);
    
    for (c = low; c <= high; c++) {
        printf("%c", c);
    }
    
    printf("\n");
}