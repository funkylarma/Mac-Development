//
//  AppDelegate.h
//  Alerts
//
//  Created by Adam Chamberlin on 03/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)createAlertPanel:(id)sender;
- (IBAction)createAlertSheet:(id)sender;

@end
