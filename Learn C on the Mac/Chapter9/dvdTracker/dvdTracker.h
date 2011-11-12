//
//  dvdTracker.h
//  dvdTracker
//
//  Created by Adam Chamberlin on 12/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#pragma Mark Defines

#define kMaxTitleLength 256
#define kMaxCommentLength 256


#pragma Mark - Struct Declaration

struct DVDInfo {
    char    rating;
    char title[kMaxTitleLength];
    char comment[kMaxCommentLength];
    struct DVDInfo *next;
} *gHeadPtr, *gTailPtr;


#pragma Mark - Function Prototypes

char GetCommand(void);
struct DVDInfo *ReadStruct(void);
void AddToList(struct DVDInfo *curPtr);
void ListDVDs(void);
void ReplaceReturnAtEndOfString(char *theString);
void Flush(void);