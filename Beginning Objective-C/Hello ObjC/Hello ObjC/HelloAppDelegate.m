//
//  HelloAppDelegate.m
//  Hello ObjC
//
//  Created by Adam Chamberlin on 30/03/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import "HelloAppDelegate.h"

@implementation HelloAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Fetch the current user's name as a default value
    self.userName = NSFullUserName();
}

@end
