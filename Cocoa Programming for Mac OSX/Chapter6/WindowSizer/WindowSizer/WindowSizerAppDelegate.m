//
//  WindowSizerAppDelegate.m
//  WindowSizer
//
//  Created by Adam Chamberlin on 29/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "WindowSizerAppDelegate.h"

@implementation WindowSizerAppDelegate

@synthesize window = _window;
@synthesize labelHeight = _labelHeight;
@synthesize labelWidth = _labelWidth;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Set the labels on app load
    [_labelHeight setFloatValue:_window.frame.size.height];
    [_labelWidth setFloatValue:_window.frame.size.width];
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    // Update the labels
    [_labelHeight setFloatValue:frameSize.height];
    [_labelWidth setFloatValue:frameSize.width];
    
    // Create a new NSSize object and set the bounds
    NSSize newSize = NSMakeSize(frameSize.width, (frameSize.width * 2));
    return newSize;
}


@end
