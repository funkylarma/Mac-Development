//
//  KvcFunAppDelegate.h
//  KvcFun
//
//  Created by Adam Chamberlin on 30/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate>
{
    int fido;
}

#pragma mark - Property

@property (assign) IBOutlet NSWindow *window;
@property (readwrite, assign) int fido;

#pragma mark - Instance Methods

- (IBAction)incrementFido:(id)sender;

@end
