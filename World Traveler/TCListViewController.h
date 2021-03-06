//
//  TCViewController.h
//  World Traveler
//
//  Created by Koen Hendriks on 01/08/14.
//  Copyright (c) 2014 Koen Hendriks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TCListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)refreshBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
