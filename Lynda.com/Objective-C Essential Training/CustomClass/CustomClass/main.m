//
//  main.m
//  CustomClass
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...        
        Employee *employee = [[Employee alloc] init];
        [employee someMethod];
        [employee setName:@"Fred"];
        
        
    }
    return 0;
}

