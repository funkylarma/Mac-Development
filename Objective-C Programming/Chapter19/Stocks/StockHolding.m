//
//  StockHolding.m
//  Stocks
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

-(float)costInDollars {
    return purchaseSharePrice * numberOfShares;
}

-(float)valueInDollars {
    return currentSharePrice * numberOfShares;
}


@end
