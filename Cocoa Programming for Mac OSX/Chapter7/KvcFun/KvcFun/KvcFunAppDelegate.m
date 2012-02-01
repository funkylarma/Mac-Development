//
//  KvcFunAppDelegate.m
//  KvcFun
//
//  Created by Adam Chamberlin on 30/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate

#pragma mark - Property Synthesizers

@synthesize window = _window;
@synthesize fido;

#pragma mark - Lifecycle Methods

- (id)init
{
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"Fido = %@", n);
    }
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

#pragma mark - Instance Methods

- (IBAction)incrementFido:(id)sender
{
    [self setFido:[self fido] + 1];
    NSLog(@"ido is now %d", fido);
}

@end
