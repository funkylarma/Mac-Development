//
//  Car.m
//  Car Parts
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

- (id) init
{
    if (self = [super init]) {
        tires = [[NSMutableArray alloc] init];
        
        int i;
        for (i = 0; i < 4; i++) {
            [tires addObject: [NSNull null]];
        }
    }
    return self;
}

- (void) dealloc
{
    [tires release];
    [engine release];
    
    [super dealloc];
}

- (void) setEngine:(Engine *)newEngine
{
    [newEngine retain];
    [engine release];
    engine = newEngine;
}

- (Engine *) engine
{
    return engine;
}

- (Tire *) tireAtIndex:(int)index
{
    Tire *tire;
    tire = [tires objectAtIndex: index];
    return tire;
}

- (void) setTire:(Tire *)tire atIndex:(int)index
{
    [tires replaceObjectAtIndex: index withObject: tire];
}

- (void) print
{
    int i;
    for (i = 0; i < 4; i++) {
        NSLog(@"%@", [self tireAtIndex: i]);
    }
    NSLog(@"%@", engine);
}

@end