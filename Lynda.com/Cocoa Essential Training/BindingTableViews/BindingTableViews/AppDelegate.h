//
//  AppDelegate.h
//  BindingTableViews
//
//  Created by Adam Chamberlin on 08/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Book.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (strong) NSMutableArray *allBooks;

- (IBAction)listBooks:(id)sender;

@end
