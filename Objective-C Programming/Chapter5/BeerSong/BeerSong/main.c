//
//  main.c
//  BeerSong
//
//  Created by Adam Chamberlin on 06/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>

void singTheSont(int numberOfBottle) {
    if (numberOfBottle == 0) {
        printf("There are simply no more bottle of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottle, numberOfBottle);
        int oneFewer = numberOfBottle - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n", oneFewer);
        singTheSont(oneFewer);
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottle);
    }
}

int main (int argc, const char * argv[])
{
    
    singTheSont(99);
    
    return 0;
}

