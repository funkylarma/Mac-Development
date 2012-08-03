//
//  AppDelegate.m
//  QuickConnections
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize textField;
@synthesize labelField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)changeLabel:(id)sender {
    NSString *message = [[NSString alloc] initWithFormat:@"Hello, %@", [textField stringValue]];
    [labelField setStringValue:message];
}
@end
