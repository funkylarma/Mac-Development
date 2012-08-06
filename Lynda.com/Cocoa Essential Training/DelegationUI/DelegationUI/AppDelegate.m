//
//  AppDelegate.m
//  DelegationUI
//
//  Created by Adam Chamberlin on 06/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)comboBoxSelectionDidChange:(NSNotification *)notification {
    NSLog(@"Combobox did changed. The notification was %@ and the object was %@", [notification name], [notification object]);
}

@end
