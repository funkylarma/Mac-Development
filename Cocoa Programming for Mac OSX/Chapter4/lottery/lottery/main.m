//
//  main.m
//  lottery
//
//  Created by Adam Chamberlin on 23/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the date object
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        
        // Seed the random number generator
        srandom((unsigned)time(NULL));
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        int i;
        for (i = 0; i < 10; i++) {
            
            [weekComponents setWeek:i];
            
            // Create a date/time object that is 'i' weeks from now
            NSDate *iWeeksFromNow = [cal dateByAddingComponents:weekComponents
                                                         toDate:now
                                                        options:0];
            
            // Create a new instance of LotteryEntry
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFromNow];
            
            // Add the LotteryEntry object tothe array
            [array addObject:newEntry];
            
            // Done with 'newEntry'
            [newEntry release];
        }
        
        // Done with 'now' and 'weekComponents'
        [now release];
        [weekComponents release];
        
        for (LotteryEntry *entryToPrint in array) {
            // Display its contents
            NSLog(@"%@", entryToPrint);
        }
        
        // Done with 'array'
        [array release];
        
    }
    return 0;
}

