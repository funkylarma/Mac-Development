//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Adam Chamberlin on 21/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

-(float)costInDollars {
    return (purchaseSharePrice * conversionRate) * numberOfShares;
}

-(float)valueInDollars {
    return (currentSharePrice * conversionRate) * numberOfShares;
}

@end
