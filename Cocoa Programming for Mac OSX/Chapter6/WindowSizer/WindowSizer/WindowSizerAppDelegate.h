//
//  WindowSizerAppDelegate.h
//  WindowSizer
//
//  Created by Adam Chamberlin on 29/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WindowSizerAppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *labelHeight;
@property (weak) IBOutlet NSTextField *labelWidth;


@end
