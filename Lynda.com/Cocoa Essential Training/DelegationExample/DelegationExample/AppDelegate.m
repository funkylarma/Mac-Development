//
//  AppDelegate.m
//  DelegationExample
//
//  Created by Adam Chamberlin on 06/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"%@", aNotification);
}

- (void)applicationWillBecomeActive:(NSNotification *)aNotification {
    NSLog(@"Application will become active!");
}

@end
