//
//  AppDelegate.m
//  BindingTableViews
//
//  Created by Adam Chamberlin on 08/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init {
    self = [super init];
    
    // Create a mutable array to hold several books
    self.allBooks = [[NSMutableArray alloc] init];
    
    // Create and store first book
    Book *firstBook = [[Book alloc] init];
    [firstBook setAuthor:@"Fred Smith"];
    [firstBook setTitle:@"On a Dark and Stormy Night"];
    [firstBook setPageCount:315];
    [self.allBooks insertObject:firstBook atIndex:[self.allBooks count]];
    
    //Create and store second book
    Book *secondBook = [[Book alloc] init];
    [secondBook setAuthor:@"Jane Jones"];
    [secondBook setTitle:@"Under the Moonlight"];
    [secondBook setPageCount:280];
    [self.allBooks insertObject:secondBook atIndex:[self.allBooks count]];
    
    return self;
}

- (IBAction)listBooks:(id)sender {
    for (Book *currentBook in self.allBooks) {
        NSLog(@"The book %@ by %@ has %i pages", currentBook.title, currentBook.author, currentBook.pageCount);
    }
}
@end
