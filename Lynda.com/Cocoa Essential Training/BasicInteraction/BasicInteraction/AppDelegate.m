//
//  AppDelegate.m
//  BasicInteraction
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

-(void)changeLabel:(id)sender {
    NSString *message = [[NSString alloc] initWithFormat:@"Hello, %@", [_textField stringValue]];
    [_labelField setStringValue:message];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

@end
