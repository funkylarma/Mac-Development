//
//  Person.h
//  BMITime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{    
    //Instance variables
    float heightInMeters;
    int weightInKilos;
}

//Create getters and setters
@property float heightInMeters;
@property int weightInKilos;

//This method calculates the Body Mass Index
-(float)bodyMassIndex;

@end
