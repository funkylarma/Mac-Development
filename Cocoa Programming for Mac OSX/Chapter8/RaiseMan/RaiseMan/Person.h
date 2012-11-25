//
//  Person.h
//  RaiseMan
//
//  Created by Adam Chamberlin on 24/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *personName;
    float expectedRaise;
}

@property (readwrite, copy) NSString *personName;
@property (readwrite) float expectedRaise;

@end
