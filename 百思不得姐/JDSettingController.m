//
//  JDSettingController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDSettingController.h"

@interface JDSettingController ()

@end

@implementation JDSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSettingController];
}

-(void)setupSettingController {
    self.navigationItem.title = @"设置";
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
