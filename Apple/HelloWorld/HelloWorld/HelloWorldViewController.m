//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Adam Chamberlin on 07/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender
{
    [self setUserName:[[self textField] text]];
    
    NSString *nameString = [self userName];
    
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    [[self label] setText:greeting];
    NSLog(@"Said hello to: %@", greeting);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == [self textField]) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
