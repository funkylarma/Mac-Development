//
//  main.c
//  TwoFloats
//
//  Created by Adam Chamberlin on 06/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

int main (int argc, const char * argv[])
{
    //Declare to floats
    float num1 = 3.14;
    float num2 = 42.0;
    
    //Declare a double as the result of the two floats
    double result = num1 + num2;
    
    //Print out the result
    printf("The result is: %f.\n", result);
    
    return 0;
}

