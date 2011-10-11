//
//  main.c
//  operator
//
//  Created by Adam Chamberlin on 11/10/2011.
//  Copyright 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    int myInt;
    
    myInt = 3*2;
    printf("myInt ---> %d\n", myInt);
    
    myInt += 1;
    printf("myInt ---> %d\n", myInt);
    
    myInt -= 5;
    printf("myInt ---> %d\n", myInt);
    
    myInt *= 10;
    printf("myInt ---> %d\n", myInt);
    
    myInt /= 4;
    printf("myInt ---> %d\n", myInt);
    
    myInt /= 2;
    printf("myInt ---> %d\n", myInt);
    
    return 0;
}

