//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    
    NSMutableSet *ownerNames;
    
}

#pragma mark - Method Declarations
// The designated initializer
-(id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;
-(void)addOwnerNamesObject:(NSString *)n;
-(void)removeOwnerNamesObject:(NSString *)n;

@end
