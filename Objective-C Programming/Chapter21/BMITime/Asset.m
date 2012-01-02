//
//  Asset.m
//  BMITime
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

-(NSString *)description
{
    //Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@", [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>", [self label], [self resaleValue]];
    }
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
