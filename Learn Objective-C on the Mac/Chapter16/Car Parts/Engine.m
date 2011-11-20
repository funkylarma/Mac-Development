//
//  Engine.m
//  Car Parts
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id) init {
    if (self = [super init]) {
        horsePower = 145;
    }
    return self;
}

- (id) copyWithZone:(NSZone *)zone {
    Engine *engineCopy;
    engineCopy = [[[self class] allocWithZone: zone] init];
    [engineCopy setValue: [NSNumber numberWithInt: horsePower ] forKey: @"horsepower"];
    return (engineCopy);
}

- (NSString *) description
{
    NSString *description;
    description = [NSString stringWithFormat: @"I am an engine. Vroom! %d HP", horsePower];
    return description;
}

@end
