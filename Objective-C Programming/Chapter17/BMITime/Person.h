//
//  Person.h
//  BMITime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    
    //It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

//You will be able to set those instance variables using these methods
@property float heightInMeters;
@property int weightInKilos;

//This method calculates the Body Mass Index
-(float)bodyMassIndex;

@end
