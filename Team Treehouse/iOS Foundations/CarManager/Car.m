//
//  Car.m
//  CarManager
//
//  Created by Adam Chamberlin on 22/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "Car.h"

@implementation Car

@synthesize doors;

-(void)setDoors:(int)anInt
{
    if (anInt >= 2) {
        doors = anInt;
    }
}

+(int)wheels
{
    return 4;
}

@end
