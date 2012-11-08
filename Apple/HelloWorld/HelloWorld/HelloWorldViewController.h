//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Adam Chamberlin on 07/11/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

@property (copy, nonatomic) NSString *userName;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)changeGreeting:(id)sender;

@end