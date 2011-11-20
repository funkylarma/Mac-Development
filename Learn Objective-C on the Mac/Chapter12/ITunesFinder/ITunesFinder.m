//
//  ITunesFinder.m
//  ITunesFinder
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import "ITunesFinder.h"

@implementation ITunesFinder

- (void) netServiceBrowser: (NSNetServiceBrowser *) b
            didFindService: (NSNetService *) service 
                moreComing: (BOOL) moreComing {
    [service resolveWithTimeout: 10];
    
    NSLog(@"found one! Name is %@", [service name]);
}

- (void) netServiceBrowser: (NSNetServiceBrowser *) b 
           didRemoveService:(NSNetService *) service
                moreComing: (BOOL)moreComing {
    [service resolveWithTimeout: 10];
    NSLog(@"lost one! Name is %@", [service name]);
}

@end