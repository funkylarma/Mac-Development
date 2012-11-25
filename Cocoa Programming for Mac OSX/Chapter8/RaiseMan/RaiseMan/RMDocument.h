//
//  RMDocument.h
//  RaiseMan
//
//  Created by Adam Chamberlin on 24/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RMDocument : NSDocument {
    NSMutableArray *employees;
}

- (void)setEmployees:(NSMutableArray *)a;

@end
