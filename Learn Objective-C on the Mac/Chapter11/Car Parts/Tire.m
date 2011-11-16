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
    if (self = [self initWithPressure: 34.0 treadDepth: 20.0])
    {
    }
    return self;
}

- (id) initWithPressure:(float) p
{
    if (self = [self initWithPressure: p treadDepth: 20.0])
    {
    }
    return self;
}

- (id) initWithTreadDepth:(float) td
{
    if (self = [self initWithPressure: 34.0 treadDepth: td])
    {
    }
    return self;
}

- (id) initWithPressure:(float) p
             treadDepth:(float) td
{
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
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