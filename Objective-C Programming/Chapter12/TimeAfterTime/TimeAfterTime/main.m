//
//  main.m
//  TimeAfterTime
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1977];
        [comps setMonth:10];
        [comps setDay:27];
        [comps setHour:10];
        [comps setMinute:10];
        [comps setSecond:10];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSDate *now = [NSDate date];
        
        double secondsAlive = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I have been alive for %f seconds", secondsAlive);
        
        
    }
    return 0;
}

