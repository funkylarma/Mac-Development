//
//  Employee.m
//  BMITime
//
//  Created by Adam Chamberlin on 18/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

-(float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
