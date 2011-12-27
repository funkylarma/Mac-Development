//
//  Portfolio.m
//  Stocks
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

-(void)addObject:(StockHolding *)s
{
    if (!stocks) {
        stocks = [[NSMutableArray alloc] init];
    }
    [stocks addObject:s];
}

-(float)currentValue {
    float value = 0.00;
    for (StockHolding *stock in stocks) {
        value += [stock valueInDollars];
    }
    return  value;
}

@end