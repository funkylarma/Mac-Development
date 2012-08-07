//
//  AppDelegate.h
//  KVCExample
//
//  Created by Adam Chamberlin on 07/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (strong) NSMutableArray *allBooks;

- (IBAction)listBooks:(id)sender;

@end
