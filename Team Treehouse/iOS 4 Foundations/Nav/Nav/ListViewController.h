//
//  ListViewController.h
//  Nav
//
//  Created by Adam Chamberlin on 18/02/2012.
//  Copyright (c) 2012 Stour Valley Designs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ListViewController : UITableViewController

@property (weak, nonatomic) NSArray *tableData;
@property (strong, nonatomic) DetailViewController *detailController;

@end
