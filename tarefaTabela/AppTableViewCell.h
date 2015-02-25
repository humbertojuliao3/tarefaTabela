//
//  AppTableViewCell.h
//  TableViewStory
//
//  Created by Rafael Souza Belchior da Silva on 25/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *appImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
