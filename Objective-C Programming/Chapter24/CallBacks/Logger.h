//
//  Logger.h
//  CallBacks
//
//  Created by Adam Chamberlin on 03/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

-(void)sayOuch:(NSTimer *)t;

@end
