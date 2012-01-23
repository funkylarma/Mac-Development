//
//  LotteryEntry.m
//  lottery
//
//  Created by Adam Chamberlin on 23/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (void)prepareRandomNumbers
{
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int)random() % 100) + 1;
}

- (void)setEntryDate:(NSDate *)date
{
    entryDate = date;
}

- (NSDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (id)init
{
    return [self initWithEntryDate:[NSDate date]];
}

// Designated initaliser
- (id)initWithEntryDate:(NSDate *)theDate
{
    self = [super init];
    if (self) {
        NSAssert(theDate != nil, @"Argument must be non-nil");
        entryDate = theDate;
        firstNumber = ((int)random() % 100) + 1;
        secondNumber = ((int)random() % 100) + 1;
    }
    return self;
}

- (NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterLongStyle];
    NSString *result = [[NSString alloc] initWithFormat:@"%@ = %d and %d", 
              [df stringFromDate:entryDate],
              firstNumber,
              secondNumber];
    return result;
}

@end