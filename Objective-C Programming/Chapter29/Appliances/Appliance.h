//
//  Appliance.h
//  Appliances
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject {
    
    NSString *productName;
    int voltage;
    
}

#pragma mark - Property Declarations
@property (copy) NSString *productName;
@property int voltage;

#pragma mark - Method Declarations
// The designated initializer
- (id)initWithProductName:(NSString *)pn;

@end
