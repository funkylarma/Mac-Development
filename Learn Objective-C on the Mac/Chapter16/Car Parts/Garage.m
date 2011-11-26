//
//  Garage.m
//  Car Parts
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Garage.h"

@implementation Garage

@synthesize name;

-(void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if (stuff == nil) {
        stuff = [[NSMutableDictionary alloc] init];
    }
    [stuff setValue:value forKey:key];
}

-(id)valueForUndefinedKey:(NSString *)key {
    id value = [stuff valueForKey:key];
    return value;
}

-(void)addCar:(Car *)car {
    if (cars == nil) {
        cars = [[NSMutableArray alloc] init];
    }
    [cars addObject:car];
}

-(void)dealloc {
    [name release];
    [cars release];
    [stuff release];
    [super dealloc];
}

-(void)print {
    NSLog(@"%@:", name);
    for (Car *car in cars) {
        NSLog(@" %@", car);
    }
}

@end
