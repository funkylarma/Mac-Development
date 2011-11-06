//
//  main.c
//  paramAddress
//
//  Created by Adam Chamberlin on 06/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include "paramAddress.h"

int main (int argc, const char * argv[])
{
    struct DVDInfo myDVD;
    
    printf("Address of myDVD.rating in main():               %p \n", &(myDVD.rating));
    
    PrintParamInfo(&myDVD, myDVD);
    return 0;
}

void PrintParamInfo(struct DVDInfo *myDVDPtr, struct DVDInfo myDVDCopy) {
    printf("Address of myDVDPtr->rating in PrintParamInfo(): %p\n", &(myDVDPtr->rating));
    printf("Address of myDVDCopy.rating in PrintParamInfo(); %p\n", &(myDVDCopy.rating));
}