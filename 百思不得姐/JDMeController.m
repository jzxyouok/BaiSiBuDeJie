//
//  JDMeController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDMeController.h"
#import "JDSettingController.h"

@interface JDMeController ()

@end

@implementation JDMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupMeController];
}

-(void)setupMeController {
    self.navigationItem.title = @"我的";
    UIBarButtonItem *moonItem = [UIBarButtonItem createBarButtonItemWithNormalImageName:@"mine-moon-icon" andHighlightedImageName:@"mine-moon-icon-click" andTarger:nil andAction:nil];
    UIBarButtonItem *settingItem = [UIBarButtonItem createBarButtonItemWithNormalImageName:@"mine-setting-icon" andHighlightedImageName:@"mine-setting-icon-click" andTarger:self andAction:@selector(clickToIntoSettingPage:)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}

/**
 *  点击进入设置界面：
 *
 *  @param sender 
 */
-(void)clickToIntoSettingPage:(UIButton *)sender {
    JDFunc;
    JDSettingController *settingVC = [[JDSettingController alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

@end
