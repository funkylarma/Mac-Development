//
//  paramAddress.h
//  paramAddress
//
//  Created by Adam Chamberlin on 06/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#pragma Mark Defines

#define kMaxDVDs 300
#define kMaxTitleLength 50
#define kMaxCommentLength 50


#pragma Mark - Struct Declaration

struct DVDInfo {
    char rating;
    char title[kMaxTitleLength];
    char comment[kMaxCommentLength];
};


#pragma Mark - Function Prototypes

void PrintParamInfo(struct DVDInfo *myDVDPtr, struct DVDInfo myDVDCopy);