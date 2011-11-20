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
	
	Car *car = [[[Car alloc] init] autorelease];
	car.name = @"Herbie";
	car.make = @"Honda";
	car.model = @"CRX";
	car.modelYear = 1984;
	car.numberOfDoors = 2;
	car.mileage = 110000;
	
	int i;
	for (i = 0; i < 4; i++) {
		AllWeatherRadial *tire;
		
		tire = [[AllWeatherRadial alloc] init];
		
		[car setTire: tire
			 atIndex: i];
		
		[tire release];
	}
	
	Slant6 *engine = [[[Slant6 alloc] init] autorelease];
	car.engine = engine;
	
	NSLog(@"Car is %@", car);
    
    NSString *name = [car valueForKey:@"name"];
    NSLog(@"%@", name);
    NSLog(@"make is %@", [car valueForKey:@"make"]);
    NSLog(@"model year is %@", [car valueForKey:@"modelYear"]);
    
    [car setValue:@"Harold" forKey:@"name"];
    NSLog(@"new car name is %@", [car name]);
    
    [car setValue:[NSNumber numberWithFloat:25062.4] forKey:@"mileage"];
    NSLog(@"new mileage is %.1f", [car mileage]);
    
    [car setValue:[NSNumber numberWithInt:155] forKeyPath:@"engine.horsePower"];
    NSLog(@"horsepower is %@", [car valueForKeyPath:@"engine.horsePower"]);
    
    NSArray *pressures = [car valueForKeyPath:@"tires.pressure"];
    NSLog(@"pressures %@", pressures);
    
	[pool release];
	
	return (0);
}