//
//  Asset.h
//  BMITime
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    //Instance variables
    NSString *label;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
