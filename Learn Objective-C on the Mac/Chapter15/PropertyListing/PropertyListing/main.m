//
//  main.m
//  PropertyListing
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

static void dateFun (void) {
    NSDate *date = [NSDate date];
    NSLog(@"today is %@", date);
}

static void dataFun (void) {
    const char *string = "Hi there, this is a C string";
    NSData *data = [NSData dataWithBytes: string length: strlen(string) + 1];
    NSLog(@"data is %@", data);
    NSLog(@"%lu byte string is '%s'", [data length], [data bytes]);
}

static void atomicCafe (void) {
    NSArray *phrase;
    phrase = [NSArray arrayWithObjects:@"I", @"seem", @"to", @"be", @"a", @"verb", nil];
    [phrase writeToFile: @"/Users/adam/Development/MacDevelopment/Learn Objective-C on the Mac/verbiage.txt" atomically:YES];
    
    NSArray *phrase2 = [NSArray arrayWithContentsOfFile:@"/Users/adam/Development/MacDevelopment/Learn Objective-C on the Mac/verbiage.txt"];
    NSLog(@"%@", phrase2);
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    dateFun();
    dataFun();
    atomicCafe();
    
    [pool release];
    
    return 0;
}

