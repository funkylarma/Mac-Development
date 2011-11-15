//
//  Tire.m
//  Car Parts
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id) init
{
    if (self = [super init]) {
        pressure = 34.0;
        treadDepth = 20.0;
    }
    return self;
}

- (void) setPressure:(float) p
{
    pressure = p;
}

- (float) pressure
{
    return pressure;
}

- (void) setTreadDepth:(float) td
{
    treadDepth = td;
}

- (float) treadDepth
{
    return treadDepth;
}

- (NSString *) description
{
    NSString *desc;
    desc = [NSString stringWithFormat: @"Tire: Pressure: %.1f TreadDepth: %.1f", pressure, treadDepth];
    return desc;
}

@end