//
//  Book.m
//  BindingTableViews
//
//  Created by Adam Chamberlin on 08/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "Book.h"

@implementation Book

- (id) init {
    self = [super init];
    
    if (self) {
        [self setAuthor:@"author"];
        [self setTitle:@"title"];
        [self setPageCount:0];
    }
    return self;
}

@end
