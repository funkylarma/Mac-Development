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
	
    NSArray *bookTitles = [NSArray arrayWithObjects:@"Brave new world", @"Call of the wild", @"Catch-22", @"Atlas Shrugged", nil];
    
    NSLog(@"%@", bookTitles);
    
    [bookTitles count];
    NSString *string = [bookTitles objectAtIndex:3];
    NSLog(@"%@", string);
    
    int index = [bookTitles indexOfObject:@"Catch-22"];
    NSLog(@"Index of Catch-22: %i", index);
    
    BOOL ret = [bookTitles containsObject:@"Catch-22"];
    NSLog(@"Index of Catch-22: %i", ret);
    
    id temp = [bookTitles lastObject];
    NSLog(@"%@", temp);
    
    NSMutableArray *booksMutable = [NSMutableArray arrayWithCapacity:0];
    
    [booksMutable addObject:@"Brave new world"];
    [booksMutable insertObject:@"Call of the wild" atIndex:0];
    NSLog(@"%@", booksMutable);
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
