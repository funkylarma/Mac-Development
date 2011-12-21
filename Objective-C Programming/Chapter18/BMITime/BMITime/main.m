//
//  main.m
//  BMITime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Employee.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an instance of Person
        Employee *person = [[Employee alloc] init];
        
        //Give the instance variable interesting values
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        //Call the bodyMassIndex method
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);
        
    }
    return 0;
}