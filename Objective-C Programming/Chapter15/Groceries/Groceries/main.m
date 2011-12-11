//
//  main.m
//  Groceries
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *shoppingList = [NSMutableArray array];
        
        [shoppingList addObject:@"Fish"];
        [shoppingList addObject:@"Beef"];
        [shoppingList addObject:@"Potatoes"];
        [shoppingList addObject:@"Carrots"];
        
        NSLog(@"When you go shopping you need to get:");
        for (NSString *s in shoppingList) {
            NSLog(@"%@", s);
        }
        
    }
    return 0;
}

