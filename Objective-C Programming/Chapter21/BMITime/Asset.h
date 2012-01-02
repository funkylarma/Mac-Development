//
//  Asset.h
//  BMITime
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    //Instance variables
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;
@property (weak) Employee *holder;

@end
