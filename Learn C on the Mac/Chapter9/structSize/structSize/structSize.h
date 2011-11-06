//
//  structSize.h
//  structSize
//
//  Created by Adam Chamberlin on 06/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#define kMaxTitleLength 256
#define kMaxCommentLength 256

struct DVDInfo {
    char rating;
    char title[kMaxTitleLength];
    char comment[kMaxCommentLength];
};