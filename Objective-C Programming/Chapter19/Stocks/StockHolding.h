//
//  StockHolding.h
//  Stocks
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject {
    
    //Instance variables
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

-(float)costInDollars;

-(float)valueInDollars;

@end
