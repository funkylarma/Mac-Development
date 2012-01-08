//
//  main.m
//  PListChallenge
//
//  Created by Adam Chamberlin on 05/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create an array to stores the elements
        NSMutableArray *plist = [[NSMutableArray alloc] init];
        
        //Create an array element
        NSArray *array = [[NSArray alloc] initWithObjects:@"1", @"2", nil];
        [plist addObject:array];
        
        //Create an dictionary element
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"key1", @"object2", @"key2", nil];
        [plist addObject:dictionary];
        
        //Create a string element
        NSString *string = [NSString stringWithFormat:@"Just a string object"];
        [plist addObject:string];
        
        //Create a data element
        NSData *data = [NSData dataWithContentsOfFile:@"/tmp/stocks.plist"];
        [plist addObject:data];
        
        //Create a date element
        NSDate *date = [NSDate date];
        [plist addObject:date];
        
        //Create an interger element
        NSNumber *integer = [NSNumber numberWithInt:12];
        [plist addObject:integer];
        
        //Create a float element
        NSNumber *floatNumber = [NSNumber numberWithFloat:24.99];
        [plist addObject:floatNumber];
        
        //Create a bool element
        NSNumber *booleanNumber = [NSNumber numberWithBool:YES];
        [plist addObject:booleanNumber];
        
        [plist writeToFile:@"/tmp/plist.plist" atomically:YES];
        NSLog(@"Written plist file");
        
    }
    return 0;
}

