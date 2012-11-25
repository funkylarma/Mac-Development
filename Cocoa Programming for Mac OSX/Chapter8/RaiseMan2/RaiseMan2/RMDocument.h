//
//  RMDocument.h
//  RaiseMan2
//
//  Created by Adam Chamberlin on 25/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"

@interface RMDocument : NSDocument <NSTableViewDataSource> {
    NSMutableArray *employees;
    IBOutlet NSTableView *tableView;
}

- (IBAction)createEmployee:(id)sender;
- (IBAction)deleteSelectedEmployees:(id)sender;

@end
