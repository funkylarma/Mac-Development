//
//  Appliance.m
//  Appliances
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

#pragma mark - Synthesizers
@synthesize productName, voltage;

#pragma mark - Initaliser Methods
- (id) init
{
    return [self initWithProductName:@"Unknown"];
}

- (id) initWithProductName:(NSString *)pn
{
    // Call the NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // Set the product name
        [self setProductName:pn];
        
        // Give voltage a starting value
        [self setVoltage:120];
    }
    
    return self;
}

#pragma mark - Misc Methods
- (NSString *)description
{
    return [NSString stringWithFormat:@"<% @: %d volts>", productName, voltage];
}

@end
