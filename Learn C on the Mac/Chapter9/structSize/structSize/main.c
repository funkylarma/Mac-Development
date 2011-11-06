//
//  main.c
//  structSize
//
//  Created by Adam Chamberlin on 06/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include "structSize.h"

int main (int argc, const char * argv[])
{
    struct DVDInfo myInfo;
    
    printf("Rating field: %ld byte\n", sizeof(myInfo.rating));
    printf("Title field: %ld bytes\n", sizeof(myInfo.title));
    printf("Comment field: %ld bytes\n", sizeof(myInfo.comment));
    printf("----\n");
    printf("myInfo struct: %ld bytes\n", sizeof(myInfo));
    
    return 0;
}

