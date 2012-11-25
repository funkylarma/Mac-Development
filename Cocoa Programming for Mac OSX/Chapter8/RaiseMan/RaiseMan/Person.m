//
//  Person.m
//  RaiseMan
//
//  Created by Adam Chamberlin on 24/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize personName, expectedRaise;

#pragma mark - Initialisation

- (id)init
{
    self = [super init];
    if (self) {
        expectedRaise = 0.05;
        personName = @"New Person";
        return self;
    }
    return nil;
}

- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqual:@"expectedRaise"]) {
        [self setExpectedRaise:0.0];
    } else {
        [super setNilValueForKey:key];
    }
}

@end
