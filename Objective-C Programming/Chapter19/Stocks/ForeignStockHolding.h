//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Adam Chamberlin on 21/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding {
    
    //Instance Variables
    float conversionRate;
}

@property float conversionRate;

@end
