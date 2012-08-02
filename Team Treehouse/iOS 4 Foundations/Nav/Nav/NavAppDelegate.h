//
//  NavAppDelegate.h
//  Nav
//
//  Created by Adam Chamberlin on 18/02/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface NavAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) ListViewController *listController;

@end
