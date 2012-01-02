//
//  Person.m
//  BMITime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize weightInKilos, heightInMeters;

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
