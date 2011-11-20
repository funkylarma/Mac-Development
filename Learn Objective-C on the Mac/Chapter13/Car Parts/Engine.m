//
//  Engine.m
//  Car Parts
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (id) copyWithZone:(NSZone *)zone {
    Engine *engineCopy;
    engineCopy = [[[self class] allocWithZone: zone] init];
    return (engineCopy);
}

- (NSString *) description
{
    return (@"I am an engine. Vroom!");
}

@end
