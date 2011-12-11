//
//  main.m
//  BMITime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Person.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an instance of Person
        Person *person = [[Person alloc] init];
        
        //Give the instance variable interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        //Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %.2f) has a BMI if %f", [person weightInKilos], [person heightInMeters], bmi);
        
    }
    return 0;
}