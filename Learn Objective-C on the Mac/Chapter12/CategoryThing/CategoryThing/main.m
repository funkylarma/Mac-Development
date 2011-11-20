//
//  main.m
//  CategoryThing
//
//  Created by Adam Chamberlin on 19/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    CategoryThing *thing;
    thing = [[CategoryThing alloc] init];
    
    [thing setThing1: 5];
    [thing setThing2: 23];
    [thing setThing3: 42];
    
    NSLog(@"Things are %@", thing);
    
    [thing release];
    
    [pool release];
    
    return 0;
}

