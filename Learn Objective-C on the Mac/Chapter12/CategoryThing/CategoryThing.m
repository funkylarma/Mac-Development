//
//  CategoryThing.m
//  CategoryThing
//
//  Created by Adam Chamberlin on 19/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *) description {
    NSString *desc;
    desc = [NSString stringWithFormat: @"%d %d %d", thing1, thing2, thing3];
    return (desc);
}

@end
