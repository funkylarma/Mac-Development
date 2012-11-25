//
//  RMDocument.m
//  RaiseMan2
//
//  Created by Adam Chamberlin on 25/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "RMDocument.h"

@implementation RMDocument

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        employees = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Action Methods

- (void)deleteSelectedEmployees:(id)sender
{
    // Which row is selected
    NSIndexSet *rows = [tableView selectedRowIndexes];
    
    // Is the selection empty?
    if ([rows count] == 0) {
        NSBeep();
        return;
    }
    [employees removeObjectsAtIndexes:rows];
    [tableView reloadData];
}

- (IBAction)createEmployee:(id)sender
{
    Person *newEmpoyee = [[Person alloc] init];
    [employees addObject:newEmpoyee];
    [tableView reloadData];
}

#pragma mark - Table view dataSource methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
    return [employees count];
}

-(id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    // What is the identifier for the column?
    NSString *identifier = [aTableColumn identifier];
    
    // What person?
    Person *person = [employees objectAtIndex:rowIndex];
    
    // What is the value of the attribute named identifier?
    return [person valueForKey:identifier];
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    NSString *identifier = [aTableColumn identifier];
    Person *person = [employees objectAtIndex:rowIndex];
    
    // Set the value for the attribute named identifier
    [person setValue:anObject forKey:identifier];
}

- (void)tableView:(NSTableView *)aTableView sortDescriptorsDidChange:(NSArray *)oldDescriptors
{
    NSArray *newDescriptors = [tableView sortDescriptors];
    [employees sortUsingDescriptors:newDescriptors];
    [tableView reloadData];
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"RMDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

@end
