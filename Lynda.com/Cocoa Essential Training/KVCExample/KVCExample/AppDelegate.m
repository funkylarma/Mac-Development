//
//  AppDelegate.m
//  KVCExample
//
//  Created by Adam Chamberlin on 07/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"
#import "Book.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.allBooks = [[NSMutableArray alloc] init];
    
    Book *firstBook = [[Book alloc] init];
    
    [firstBook setAuthor:@"Fred Smith"];
    [firstBook setTitle:@"On a Dark and Stormy Night"];
    [firstBook setPageCount:315];
    
    [self.allBooks insertObject:firstBook atIndex:[self.allBooks count]];
    
    Book *secondBook = [[Book alloc] init];
    
    [secondBook setAuthor:@"Jane Jones"];
    [secondBook setTitle:@"Under the Moonlight"];
    [secondBook setPageCount:280];
    
    [self.allBooks insertObject:secondBook atIndex:[self.allBooks count]];
    
    Book *thirdBook = [[Book alloc] init];
    
    [thirdBook setValue:@"Jan Hanberg" forKey:@"author"];
    [thirdBook setValue:@"Winter is long" forKey:@"title"];
    [thirdBook setValue:[NSNumber numberWithInt:250] forKey:@"pageCount"];
    
    [self.allBooks insertObject:thirdBook atIndex:[self.allBooks count]];
}

- (IBAction)listBooks:(id)sender {
    for (Book *currentBook in self.allBooks) {
        NSLog(@"The book %@ by %@ has %@ pages",
              [currentBook valueForKey:@"title"],
              [currentBook valueForKey:@"author"],
              [currentBook valueForKey:@"pageCount"]);
    }
}
@end
