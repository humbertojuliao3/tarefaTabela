//
//  AppDetailViewController.m
//  TableViewStory
//
//  Created by Rafael Souza Belchior da Silva on 25/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "AppDetailViewController.h"

@interface AppDetailViewController ()

@end

@implementation AppDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameLabel.text = _appDetail[0];
    _descriptionLabel.text = _appDetail[1];
    _imageView.image = [UIImage imageNamed:_appDetail[2]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
