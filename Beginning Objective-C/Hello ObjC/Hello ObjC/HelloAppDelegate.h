//
//  HelloAppDelegate.h
//  Hello ObjC
//
//  Created by Adam Chamberlin on 30/03/2013.
//  Copyright (c) 2013 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HelloAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (copy) NSString *userName;

@end
