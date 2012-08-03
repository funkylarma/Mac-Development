//
//  Employee.h
//  CustomClass
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

-(void) someMethod;

@end
