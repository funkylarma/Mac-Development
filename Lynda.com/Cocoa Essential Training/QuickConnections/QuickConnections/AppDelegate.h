//
//  AppDelegate.h
//  QuickConnections
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTextField *labelField;

@property (assign) IBOutlet NSWindow *window;
- (IBAction)changeLabel:(id)sender;

@end
