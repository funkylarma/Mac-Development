//
//  LotteryEntry.h
//  lottery
//
//  Created by Adam Chamberlin on 23/01/2012.
//  Copyright (c) 2012 Stour Valley Design. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

- (id)initWithEntryDate:(NSDate *)theDate;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end