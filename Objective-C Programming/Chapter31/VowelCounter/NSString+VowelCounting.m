//
//  NSString+VowelCounting.m
//  VowelCounter
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "NSString+VowelCounting.h"

@implementation NSString (VowelCounting)

-(int)vowelCount
{
    NSCharacterSet *charset = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charset characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end
