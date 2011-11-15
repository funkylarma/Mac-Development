//
//  main.m
//  FileWalker
//
//  Created by Adam Chamberlin on 15/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
    
    NSFileManager *manager;
    manager = [NSFileManager defaultManager];
    
    NSString *home;
    home = [@"~" stringByExpandingTildeInPath];
    
    NSDirectoryEnumerator *direnum;
    direnum = [manager enumeratorAtPath: home];
    
    NSMutableArray *files;
    
    files = [NSMutableArray arrayWithCapacity: 42];
    
    for (NSString *filename in [manager enumeratorAtPath: home]) {
        if ([[filename pathExtension] isEqualTo: @"jpg"]) {
            [files addObject: filename];
        }
    }
    
    for (NSString *filename in files) {
        NSLog(@"%@", filename);
    }
    
    [pool drain];
    
    return 0;
}