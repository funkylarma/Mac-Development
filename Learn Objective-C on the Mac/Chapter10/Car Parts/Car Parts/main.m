//
//  main.m
//  Car Parts
//
//  Created by Adam Chamberlin on 14/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    Car *car = [[Car alloc] init];
    
    int i;
    for (i = 0; i < 4; i++) {
        AllWeatherRadial *tire;
        tire = [[AllWeatherRadial alloc] init];
        
        [car setTire: tire atIndex: i];
        
        [tire release];
    }
    
    Engine *engine = [[Slant6 alloc] init];
    [car setEngine: engine];
    [engine release];
    
    [car print];
    [car release];
    
    [pool release];
    
    return 0;
}