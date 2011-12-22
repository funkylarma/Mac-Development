//
//  Asset.m
//  BMITime
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
