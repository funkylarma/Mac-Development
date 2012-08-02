//
//  Car.h
//  CarManager
//
//  Created by Adam Chamberlin on 22/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    
    int doors;
    
}

@property (nonatomic) int doors;

-(void)drive;
+(int)wheels;

@end
