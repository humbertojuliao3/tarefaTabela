//
//  AppTableViewController.h
//  TableViewStory
//
//  Created by Rafael Souza Belchior da Silva on 25/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewController : UITableViewController <UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *appName;
@property (nonatomic, strong) NSMutableArray *appDescription;
@property (nonatomic, strong) NSMutableArray *appImages;

@end
