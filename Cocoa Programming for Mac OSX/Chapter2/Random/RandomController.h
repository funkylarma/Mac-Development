//
//  RandomController.h
//  Random
//
//  Created by Adam Chamberlin on 22/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//



@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}

- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;

@end