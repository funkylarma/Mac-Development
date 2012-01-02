//
//  Employee.h
//  BMITime
//
//  Created by Adam Chamberlin on 18/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{    
    //Instance variables
    int employeeID;
    NSMutableArray *assets;

}

//Getters and setters
@property int employeeID;

//Instance Methods
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
