//
//  AppDelegate.h
//  KVCBinding
//
//  Created by Adam Chamberlin on 07/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Book.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (strong) Book *singleBook;

@end
