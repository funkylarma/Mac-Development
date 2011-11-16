//
//  main.m
//  LengthAsNSNumber
//
//  Created by Adam Chamberlin on 16/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber;

@end

@implementation NSString (NumberConvenience)

- (NSNumber *) lengthAsNumber {
    unsigned int length = (int)[self length];
    return ([NSNumber numberWithUnsignedInt: length]);
}

@end

int main (int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    NSMutableDictionary *dict;
    dict = [NSMutableDictionary dictionary];
    
    [dict setObject: [@"hello" lengthAsNumber] forKey: @"hello"];
    [dict setObject: [@"iLikeFish" lengthAsNumber] forKey: @"iLikeFish"];
    [dict setObject: [@"Once upon a time" lengthAsNumber] forKey: @"Once upon a time"];
    
    NSLog(@"%@", dict);
    
    [pool release];
    
    return (0);
    
}

