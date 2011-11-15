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
    
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    RetainTracker *tracker;
    tracker = [RetainTracker new]; //count: 1
    
    [tracker retain]; //count: 2
    [tracker autorelease]; //count: still 2
    [tracker release]; //count: 1
    
    NSLog(@"releasing the pool");
    [pool release];
    
    return 0;
}