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

@synthesize name = appellation;
@synthesize engine;

- (id) init
{
    if (self = [super init]) {
        
        self.name = @"Car";
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
    self.name = nil;
    [tires release];
    [engine release];
    
    [super dealloc];
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
    NSLog(@"%@ has:", self.name);
    int i;
    for (i = 0; i < 4; i++) {
        NSLog(@"%@", [self tireAtIndex: i]);
    }
    NSLog(@"%@", engine);
}

@end