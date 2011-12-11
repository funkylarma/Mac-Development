//
//  main.m
//  ChallengeSystemTime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *timeZone = [[NSTimeZone alloc] init];
        
        if ([timeZone isDaylightSavingTime]) {
            NSLog(@"Yes we are in daylight savings");
        } else {
            NSLog(@"Nope, no daylight savings here");
        }
        
    }
    return 0;
}

