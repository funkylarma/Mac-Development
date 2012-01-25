//
//  CountAppDelegate.m
//  CountChars
//
//  Created by Adam Chamberlin on 25/01/2012.
//  Copyright (c) 2012 Stour Valley Design. All rights reserved.
//

#import "CountAppDelegate.h"

@implementation CountAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize result = _result;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)countChars:(id)sender
{
    NSString *string = [_textField stringValue];
    if ([string length] == 0) {
        NSLog(@"There is no length to count");
        return;
    }
    NSString *result = [NSString stringWithFormat:@"'%@' has %i characters.", string, [string length]];
    [_result setStringValue:result];
}
@end
