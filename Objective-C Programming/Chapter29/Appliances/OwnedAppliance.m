//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

-(id)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn
                      firstOwnerName:nil];
}

-(id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    // Call the superclass's initialiser
    self = [super initWithProductName:pn];
    
    if (self) {
        // Make a set to hold owner names
        ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner name non-nil?
        if (n) {
            [ownerNames addObject:n];
        }
    }
    
    // Return a pointer to the new object
    return self;
}

-(void)addOwnerNamesObject:(NSString *)n
{
    [ownerNames addObject:n];
}

-(void)removeOwnerNamesObject:(NSString *)n
{
    [ownerNames removeObject:n];
}

@end