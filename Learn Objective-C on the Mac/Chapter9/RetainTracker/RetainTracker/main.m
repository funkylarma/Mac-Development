//
//  main.m
//  RetainTracker
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject {
}
@end

@implementation RetainTracker

- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: Retain count of %lu.", [self retainCount]);
    }
    
    return (self);
}

- (void) dealloc
{
    NSLog(@"dealloc called. Bye bye.");
    [super dealloc];
}

@end

int main (int argc, const char * argv[])
{
    
    RetainTracker *tracker = [RetainTracker new]; //count 1
    
    [tracker retain]; //count: 2
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker retain]; //count: 3
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker release]; //count: 2
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker release]; //count: 1
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker retain]; //count 2
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker release]; //count 1
    NSLog (@"%lu", [tracker retainCount]);
	
    [tracker release]; //count: 0, dealloc it
    
    return 0;
}

