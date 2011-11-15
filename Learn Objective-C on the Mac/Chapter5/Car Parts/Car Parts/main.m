//
//  main.m
//  Car Parts
//
//  Created by Adam Chamberlin on 14/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma Mark Tire class

@interface Tire : NSObject {
}
@end

@implementation Tire

- (NSString *) description
{
    return (@"I am a tire, I last a while");
}

@end


#pragma Mark Engine class

@interface Engine : NSObject {
}
@end

@implementation Engine

- (NSString *) description
{
    return (@"I am an engine. Vroom!");
}

@end


#pragma Mark Slant6 engine class

@interface Slant6 : Engine {
}
@end

@implementation Slant6

- (NSString *) description
{
    return (@"I am a slant-6. Vroom!");
}

@end


#pragma Mark AllWeatherRadial tire class

@interface AllWeatherRadial : Tire {
}
@end

@implementation AllWeatherRadial

- (NSString *) description {
    return (@"I am a tire for rain or shine.");
}

@end


#pragma Mark Car class

@interface Car : NSObject {
    Engine *engine;
    Tire *tires[4];
}
- (Engine *) engine;
- (void) setEngine: (Engine *) newEngine;
- (Tire *) tireAtIndex: (int) index;
- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (void) print;
@end

@implementation Car

- (Engine *) engine
{
    return engine;
}

- (void) setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

- (Tire *) tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        exit(1);
    }
    
    return (tires[index]);
}

- (void) setTire:(Tire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    tires[index] = tire;
}

- (void) print
{
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}

@end

int main (int argc, const char * argv[])
{
    Car *car = [Car new];
    
    Engine *engine = [Slant6 new];
    
    [car setEngine: engine];
    
    int i;
    for (i = 0; i < 4; i++) {
        Tire *tire = [AllWeatherRadial new];
        
        [car setTire: tire atIndex: i];
    }
    
    [car print];
    
    return 0;
}