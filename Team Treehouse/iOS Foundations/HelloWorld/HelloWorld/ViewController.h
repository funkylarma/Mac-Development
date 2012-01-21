//
//  ViewController.h
//  HelloWorld
//
//  Created by Adam Chamberlin on 21/01/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (unsafe_unretained, nonatomic) IBOutlet UILabel *label;
- (IBAction)buttonPressed:(id)sender;

@end