//
//  Car.h
//  Car Parts
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tire;
@class Engine;

@interface Car : NSObject
{
    Engine *engine;
    NSMutableArray *tires;
}

- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire 
         atIndex: (int) index;

- (void) print;

@end