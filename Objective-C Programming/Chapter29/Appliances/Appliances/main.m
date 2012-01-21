//
//  main.m
//  Appliances
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        
    }
    return 0;
}

