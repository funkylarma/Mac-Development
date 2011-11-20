//
//  AppController.m
//  CaseTool
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id) init {
    if (self = [super init]) {
        NSLog(@"init: text %@ / results %@", textField, resultsField);
    }
    return self;
}

- (void) awakeFromNib {
    NSLog(@"awake: text %@ / results %@", textField, resultsField);
    
    [textField setStringValue: @"Enter text here"];
    [resultsField setStringValue: @"Results"];
}

- (IBAction)uppercase:(id)sender {
    NSString *original;
    original = [textField stringValue];
    
    NSString *uppercase;
    uppercase = [original uppercaseString];
    
    [resultsField setStringValue: uppercase];
}

- (IBAction)lowercase:(id)sender {
    NSString *original;
    original = [textField stringValue];
    
    NSString *lowercase;
    lowercase = [original lowercaseString];
    
    [resultsField setStringValue: lowercase];
}

@end
