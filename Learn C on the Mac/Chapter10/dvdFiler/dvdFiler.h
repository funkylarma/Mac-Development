//
//  dvdFiler.h
//  dvdFiler
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#pragma Mark Defines

#define kMaxTitleLength 256
#define kMaxCommentLength 256
#define kDVDFileName "/Users/adam/Development/MacDevelopment/Learn C on the Mac/dvdData"


#pragma Mark - Struct Declarations

struct DVDInfo {
    char rating;
    char title[kMaxTitleLength];
    char comment[kMaxCommentLength];
    struct DVDInfo *next;
};


#pragma Mark - Global Declarations

extern struct DVDInfo *gHeadPtr, *TailPtr;


#pragma Mark - Function Prototypes

char GetCommand(void);
struct DVDInfo *ReadStruct(void);
void AddToList(struct DVDInfo *curPtr);
void ListDVDs(void);
void ReplaceReturnAtEndOfString(char *theString);
void Flush(void);

void WriteFile(void);
void ReadFile(void);
char ReadStructFromFile(FILE *fp, struct DVDInfo *infoPtr);