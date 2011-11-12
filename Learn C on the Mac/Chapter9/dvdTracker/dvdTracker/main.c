//
//  main.c
//  dvdTracker
//
//  Created by Adam Chamberlin on 12/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dvdTracker.h"

#pragma Mark Main

int main (int argc, const char * argv[])
{
    char command;
    
    gHeadPtr = NULL;
    gTailPtr = NULL;
    
    while ((command = GetCommand()) != 'q') {
        switch (command) {
            case 'n':
                AddToList(ReadStruct());
                break;
            case 'l':
                ListDVDs();
                break;
        }
    }
    
    printf("Goodbye...");
    
    return 0;
}

#pragma Mark - Functions

char GetCommand(void) {
    char command;
    
    do {
        printf("Enter command (q=quit, n=new, l=list): ");
        scanf("%c", &command);
        Flush();
    } while ((command != 'q') && (command != 'n') && (command != 'l'));
    
    printf("\n-----\n");
    return command;
}

struct DVDInfo *ReadStruct(void) {
    struct DVDInfo *infoPtr;
    int num;
    
    infoPtr = (struct DVDInfo *)malloc(sizeof(struct DVDInfo));
    
    if (infoPtr == NULL) {
        printf("Out of memeory! Goodbye\n");
        exit(0);
    }
    
    printf("Enter DVD title: ");
    fgets(infoPtr->title, kMaxTitleLength, stdin);
    ReplaceReturnAtEndOfString(infoPtr->title);
    
    printf("Enter DVD comment: ");
    fgets(infoPtr->comment, kMaxCommentLength, stdin);
    ReplaceReturnAtEndOfString(infoPtr->comment);
    
    do {
        num = 0;
        printf("Enter DVD rating (1-10): ");
        scanf("%d", &num);
        Flush();
    } while ((num < 1) || (num > 10));
    
    infoPtr->rating = num;
    
    printf("\n------\n");
    
    return infoPtr;
}

void AddToList(struct DVDInfo *curPtr) {
    if (gHeadPtr == NULL) {
        gHeadPtr = curPtr;
    } else {
        gTailPtr->next = curPtr;
    }
    
    gTailPtr = curPtr;
    curPtr->next = NULL;
}

void ListDVDs(void) {
    struct DVDInfo *curPtr;
    
    if (gHeadPtr == NULL) {
        printf("No DVDs have been entered yet...\n");
        printf("\n------\n");
    } else {
        for (curPtr = gHeadPtr; curPtr != NULL; curPtr = curPtr->next) {
            printf("Title: %s\n", curPtr->title);
            printf("Comment: %s\n", curPtr->comment);
            printf("Rating: %d\n", curPtr->rating);
            printf("\n------\n");
        }
    }
}

void ReplaceReturnAtEndOfString(char *theString) {
    int length = (int)strlen(theString);
    theString[length - 1] = '\0';
}

void Flush(void) {
    while (getchar() != '\n') {
        ;
    }
}