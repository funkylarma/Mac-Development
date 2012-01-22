//
//  ViewController.m
//  Books
//
//  Created by Adam Chamberlin on 22/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *bookTitle = @"Brave new world!";
    NSLog(@"%p - %@", bookTitle, bookTitle);
    
    NSString *bookTitle2 = bookTitle;
    NSLog(@"%p - %@", bookTitle2, bookTitle2);
    
    bookTitle2 = @"Catch 22";
    NSLog(@"%p - %@", bookTitle2, bookTitle2);
    
    NSString *bookAuthor = @"Aldous Huxley";
    int datePublished = 1932;
    
    NSString *book = [NSString stringWithFormat:@"%@ by %@ date published: %i", bookTitle, bookAuthor, datePublished];
    
    NSLog(@"%@", book);
    
    // Substring function
    NSLog(@"%@", [book substringToIndex:5]);
    
    // Substring function
    NSLog(@"%@", [book substringFromIndex:6]);
    
    // Range takes two arguments the starting index and the length
    NSLog(@"%@", [book substringWithRange: NSMakeRange(6, 3)]);
    
    book = [book stringByReplacingOccurrencesOfString:@" " withString:@"!"];
    NSLog(@"%@", book);
    
    if ([bookTitle isEqualToString:@"Brave new world!"]) {
        NSLog(@"They are the same");
    }
    
    NSMutableString *bookMutable = [NSMutableString stringWithString:bookTitle];
    
    NSLog(@"%p - %@", bookMutable, bookMutable);
    
    [bookMutable appendString:bookAuthor];
    NSLog(@"%p - %@", bookMutable, bookMutable);

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
