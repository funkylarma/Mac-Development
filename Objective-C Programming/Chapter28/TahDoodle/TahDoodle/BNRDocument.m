//
//  BNRDocument.m
//  TahDoodle
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

#pragma mark - NSDocument Overrides

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

#pragma mark - Actions

- (IBAction)createNewItem:(id)sender
{
    // If there is no array yet, go ahead and create one to store our new task
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    [todoItems addObject:@"New Item"];
    
    // -reloadDate tels the table view to refresh and ask it's dataSource
    // (Which happens to be this BNRDocument object in this case) for new data to display
    [itemTableView reloadData];
    
    // -updateChangeCount: tells the application whether or not the document has unsaved changes.
    // NSChangeDone flags the document as unsaved
    [self updateChangeCount:NSChangeDone];
}

- (IBAction)deleteItem:(id)sender
{
    if ([itemTableView selectedRow] != -1) {
        [todoItems removeObjectAtIndex:[itemTableView selectedRow]];
        [itemTableView reloadData];
        [self updateChangeCount:NSChangeDone];
    }
    else {
        NSLog(@"Nothing to delete");
    }
}

#pragma mark - Data Source Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    // This table view is meant to display the todoItems, so the number of entries in the table view will be the same
    // as the number of objects in the array
    return [todoItems count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Return the item from todoItems that correcsponds to the cell that the table view wants to display
    return [todoItems objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // When the user changes a to-do item on the table view, update the todoItems array
    [todoItems replaceObjectAtIndex:row withObject:object];
    // And then flag the document as having unsaved changes
    [self updateChangeCount:NSChangeDone];
}

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        // If an error occurs here, return nil.
    }
    return self;
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // This method is called when our document is being saved
    // We are expected to hand the caller an NSData object wrapping our data so that it can be written to disk
    
    // If there is no array, we'll write out an empty array for now
    if (!todoItems) {
        todoItems = [NSMutableArray array];
    }
    
    // Pack our todoItems array into an NSData object
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:todoItems
                                                              format:NSPropertyListXMLFormat_v1_0
                                                             options:NSPropertyListMutableContainers
                                                               error:outError];
    
    // Return our newly-packed NSData object
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // This method is called when a document is being loaded
    // We are handed an NSData object and expected to pull our data out of it
    
    // Extract our todoItems
    todoItems = [NSPropertyListSerialization propertyListWithData:data
                                                          options:0
                                                           format:NULL
                                                            error:outError];
    
    // Return success of failure depending on success of the above call
    return (todoItems != nil);
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
