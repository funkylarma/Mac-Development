//
//  MyTableViewHelper.m
//  TableViewCodeDemo
//
//  Created by Adam Chamberlin on 07/08/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "MyTableViewHelper.h"

@implementation MyTableViewHelper

NSArray *languages;

- (void)awakeFromNib {
    languages = [NSLocale preferredLanguages];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    return [languages count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    
    if ([aTableColumn.identifier isEqualToString:@"code"]) {
        return [languages objectAtIndex:rowIndex];
    } else {
        return [[NSLocale currentLocale] displayNameForKey:NSLocaleIdentifier value:[languages objectAtIndex:rowIndex]];
    }

}

@end
