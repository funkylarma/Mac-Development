//
//  Book.h
//  KVCExample
//
//  Created by Adam Chamberlin on 07/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (strong) NSString *author;
@property (strong) NSString *title;
@property int pageCount;

@end
