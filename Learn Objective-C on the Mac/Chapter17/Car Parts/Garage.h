//
//  Garage.h
//  Car Parts
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car;

@interface Garage : NSObject {
    NSString *name;
    NSMutableArray *cars;
    NSMutableDictionary *stuff;
}

@property (readwrite, copy) NSString *name;
@property (readwrite, retain) NSMutableArray *cars;

- (void) addCar: (Car*)car;

- (void) print;

@end
