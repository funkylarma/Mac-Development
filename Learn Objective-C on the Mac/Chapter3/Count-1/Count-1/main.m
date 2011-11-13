//
//  main.m
//  Count-1
//
//  Created by Adam Chamberlin on 13/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    int count = 10;
    
    NSLog(@"The numbers from 1 to %d:", count);
    
    int i;
    for (i = 1; i <= count; i++) {
        NSLog(@"%d", i);
    }
    
    return 0;
}