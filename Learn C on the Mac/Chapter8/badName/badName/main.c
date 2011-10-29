//
//  main.c
//  badName
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main (int argc, const char * argv[])
{
    char name[50];
    
    printf("Type your first name, please: ");
    
    scanf("%s", name);
    
    printf("Welcome, %s.\n", name);
    printf("Your name is %d is characters long", (int)strlen(name));
    
    return 0;
}

