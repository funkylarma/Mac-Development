//
//  main.c
//  goodName
//
//  Created by Adam Chamberlin on 29/10/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main (int argc, const char * argv[])
{
    char name[50];
    int nameLength;
    
    printf("Type in your first name, please: ");
    
    fgets(name, 50, stdin);
    nameLength = (int)strlen(name);
    name[nameLength - 1] = 0;
    
    printf("Welcome, %s.\n", name);
    printf("Your name is %d characters long.", (int)strlen(name));
    
    return 0;
}

