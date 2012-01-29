//
//  ToDoAppDelegate.m
//  ToDo
//
//  Created by Adam Chamberlin on 28/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "ToDoAppDelegate.h"

@implementation ToDoAppDelegate

#pragma mark - Property Syntheziers

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize tableView = _tableView;

#pragma mark - Lifecycle

- (id)init
{
    self = [super init];
    if (self) {
        
        // Create array for the tasks
        if (_tasks == nil) {
            _tasks = [[NSMutableArray alloc] initWithCapacity:0];
        }
    
    }
    
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [_window makeFirstResponder:_textField];
}

#pragma mark - Target/Action Buttons

- (IBAction)addTask:(id)sender 
{
    NSString *task = [_textField stringValue];
    [_tasks addObject:task];
    [_tableView reloadData];
    [_textField setStringValue:@""];
    NSLog(@"Adding task '%@'", task);
}

#pragma mark - TableView

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
    NSLog(@"There are %lu tasks in the array", [_tasks count]);
    return [_tasks count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    return [_tasks objectAtIndex:rowIndex];
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    [_tasks replaceObjectAtIndex:rowIndex withObject:anObject];
}

@end
