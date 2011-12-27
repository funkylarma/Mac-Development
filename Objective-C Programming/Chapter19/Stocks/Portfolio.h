//
//  Portfolio.h
//  Stocks
//
//  Created by Adam Chamberlin on 22/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stocks;
    float currentValue;
}

-(void)addObject:(StockHolding *)s;
-(float)currentValue;

@end
