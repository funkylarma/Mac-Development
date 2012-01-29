//
//  ToDoAppDelegate.h
//  ToDo
//
//  Created by Adam Chamberlin on 28/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToDoAppDelegate : NSObject <NSApplicationDelegate>
{
    NSMutableArray *_tasks;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)addTask:(id)sender;

@end
