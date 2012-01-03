//
//  main.m
//  CallBacks
//
//  Created by Adam Chamberlin on 03/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc] init];
        
        __unused NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                         target:logger
                                                       selector:@selector(sayOuch:)
                                                       userInfo:nil
                                                        repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

