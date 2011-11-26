//
//  main.m
//  Car Parts
//
//  Created by Adam Chamberlin on 14/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Engine.h"
#import "Garage.h"
#import "Slant6.h"
#import "Tire.h"

Car *makeCar(NSString *name, NSString *make, NSString *model, int modelYear, int numberOfDoors, float mileage, int horsepower) {
    Car *car = [[[Car alloc] init] autorelease];

    car.name = name;
    car.make = make;
    car.model = model;
    car.modelYear = modelYear;
    car.numberOfDoors = numberOfDoors;
    car.mileage = mileage;
    
    Slant6 *engine = [[[Slant6 alloc] init] autorelease];
    [engine setValue:[NSNumber numberWithInt:horsepower] forKey:@"horsePower"];
    car.engine = engine;
    
    for (int i = 0; i < 4; i++) {
        Tire *tire = [[[Tire alloc] init] autorelease];
        [car setTire:tire atIndex:i];
    }
    
    return car;
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
	pool = [[NSAutoreleasePool alloc] init];
	
	Garage *garage = [[Garage alloc] init];
	garage.name = @"Joe's Garage";
	
	Car *car;
    car = makeCar(@"Herbie", @"VW", @"Beetle", 1963, 2, 110000, 58);
    [garage addCar:car];
    
    NSPredicate *predicate;
    predicate = [NSPredicate predicateWithFormat:@"name == 'Herbie'"];
    BOOL match = [predicate evaluateWithObject:car];
    NSLog(@"%s", (match) ? "YES" : "NO");
    
    predicate = [NSPredicate predicateWithFormat:@"engine.horsePower > 150"];
    match = [predicate evaluateWithObject:car];
    NSLog(@"%s", (match) ? "YES" : "NO");
    
    car = makeCar (@"Badger", @"Acura", @"Integra", 1987, 5, 217036.7, 130);
	[garage addCar: car];
	
	car = makeCar (@"Elvis", @"Acura", @"Legend", 1989, 4, 28123.4, 151);
	[garage addCar: car];
	
	car = makeCar (@"Phoenix", @"Pontiac", @"Firebird", 1969, 2, 85128.3, 345);
	[garage addCar: car];
	
	car = makeCar (@"Streaker", @"Pontiac", @"Silver Streak", 1950, 2, 39100.0, 36);
	[garage addCar: car];
	
	car = makeCar (@"Judge", @"Pontiac", @"GTO", 1969, 2, 45132.2, 370);
	[garage addCar: car];
	
	car = makeCar (@"Paper Car", @"Plymouth", @"Valiant", 1965, 2, 76800, 105);
	[garage addCar: car];
    
    NSArray *cars = [garage cars];
    for (Car *car in cars) {
        if ([predicate evaluateWithObject:car]) {
            NSLog(@"%@", car.name);
        }
    }
    
    NSArray *results;
    results = [cars filteredArrayUsingPredicate:predicate];
    NSLog(@"%@", results);
    
    NSArray *names;
    names = [results valueForKey:@"name"];
    NSLog(@"%@", names);
    
    NSMutableArray *carsCopy = [cars mutableCopy];
    [carsCopy filterUsingPredicate:predicate];
    NSLog(@"%@", carsCopy);
    
    predicate = [NSPredicate predicateWithFormat:@"engine.horsePower > %d", 50];
    results = [cars filteredArrayUsingPredicate:predicate];
    NSLog(@"%@", results);
    
    predicate = [NSPredicate predicateWithFormat:@"name == %@", @"Herbie"];
    results = [cars filteredArrayUsingPredicate:predicate];
    NSLog(@"%@", results);
    
    predicate = [NSPredicate predicateWithFormat:@"%K == %@", @"name", @"Herbie"];
    results = [cars filteredArrayUsingPredicate:predicate];
    NSLog(@"%@", results);
	
	[garage release];
	
	[pool release];
	
	return (0);
}