//
//  AppController.h
//  CaseTool
//
//  Created by Adam Chamberlin on 20/11/2011.
//  Copyright (c) 2011 Stour Valley Designs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject {
    
    IBOutlet NSTextField *textField;
    IBOutlet NSTextField *resultsField;
    
}

- (IBAction)uppercase:(id)sender;
- (IBAction)lowercase:(id)sender;

@end
