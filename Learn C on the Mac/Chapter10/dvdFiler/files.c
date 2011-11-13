//
//  files.c
//  dvdFiler
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "dvdFiler.h"

void WriteFile(void) {
    FILE *fp;
    struct DVDInfo *infoPtr;
    int num;
    
    if ((fp = fopen(kDVDFileName, "w")) == NULL) {
        printf("ERROR: Could not write to the file");
        return;
    }
    
    for (infoPtr = gHeadPtr; infoPtr != NULL; infoPtr = infoPtr->next) {
        fprintf(fp, "%s\n", infoPtr->title);
        fprintf(fp, "%s\n", infoPtr->comment);
        
        num = infoPtr->rating;
        fprintf(fp, "%d\n", num);
    }
    
    fclose(fp);
}

void ReadFile(void) {
    FILE *fp;
    struct DVDInfo *infoPtr;
    
    if ((fp = fopen(kDVDFileName, "r")) == NULL) {
        printf("ERROR: Could not read the file");
        return;
    }
    
    do {
        infoPtr = malloc(sizeof(struct DVDInfo));
        
        if (infoPtr == NULL) {
            printf("Out of memory! Goodbye\n");
            exit(0);
        }
    } while (ReadStructFromFile(fp, infoPtr));
    
    fclose(fp);
    free(infoPtr);
}

char ReadStructFromFile(FILE *fp, struct DVDInfo *infoPtr) {
    int num;
    if (fscanf(fp,"%[^\n]\n", infoPtr->title) != EOF) {
        if (fscanf(fp, "%[^\n]\n", infoPtr->comment) == EOF) {
            printf("Missing DVD comment\n");
            return false;
        } else if (fscanf(fp, "%d\n", &num) == EOF){
            printf("Missing DVD rating\n");
            return false;
        } else {
            infoPtr->rating = num;
            AddToList(infoPtr);
            return true;
        }
    } else {
        return false;
    }
}