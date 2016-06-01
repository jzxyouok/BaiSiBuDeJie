//
//  JDEssenceController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDEssenceController.h"

@interface JDEssenceController ()

@end

@implementation JDEssenceController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupEssenceController];
}

/**
 *  初始化：
 */
-(void)setupEssenceController {
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem createBarButtonItemWithNormalImageName:@"MainTagSubIcon" andHighlightedImageName:@"MainTagSubIconClick" andTarger:nil andAction:nil];
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
