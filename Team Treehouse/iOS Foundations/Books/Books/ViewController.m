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
	
    NSString *bookTitle = @"Brave new world";
    NSString *bookAuthor = @"Aldous Huxley";
    int datePublished = 1932;
    
    //NSString *book = [NSString stringWithFormat:@"%@ - %@, %i", bookTitle, bookAuthor, datePublished];
    
    NSDictionary *book1 = [NSDictionary dictionaryWithObjectsAndKeys:bookTitle,@"title",bookAuthor,@"author",[NSNumber numberWithInt:datePublished],@"datePublished", nil];
    
    NSLog(@"%@", book1);
    NSLog(@"%@", [book1 objectForKey:@"title"]);
    NSLog(@"%@", [book1 objectForKey:@"author"]);
    NSLog(@"%i", [[book1 objectForKey:@"datePublished"] intValue]);
    
    NSMutableDictionary *bookMutable = [NSMutableDictionary dictionaryWithCapacity:0];
    
    [bookMutable setValue:bookTitle forKey:@"title"];
    [bookMutable setValue:bookAuthor forKey:@"author"];
    [bookMutable setValue:[NSNumber numberWithInt:datePublished] forKey:@"datePublished"];
    NSLog(@"%@", bookMutable);
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
