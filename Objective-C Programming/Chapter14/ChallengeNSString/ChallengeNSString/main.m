//
//  main.m
//  ChallengeNSString
//
//  Created by Adam Chamberlin on 11/12/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSLog(@"Your computer is called %@", [host localizedName]);
        
    }
    return 0;
}

