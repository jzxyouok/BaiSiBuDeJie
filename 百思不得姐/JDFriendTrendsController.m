//
//  JDFriendTrendsController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDFriendTrendsController.h"
#import "JDFriendsRecommentController.h"

@interface JDFriendTrendsController ()

@end

@implementation JDFriendTrendsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupFriendTrendsController];
}

-(void)setupFriendTrendsController {
    self.navigationItem.title = @"我的关注";
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem createBarButtonItemWithNormalImageName:@"friendsRecommentIcon" andHighlightedImageName:@"friendsRecommentIcon-click" andTarger:self andAction:@selector(clickToIntoFriendsRecommentPage:)];
}

/**
 *  点击进入好友推荐界面：
 */
-(void)clickToIntoFriendsRecommentPage:(UIButton *)sender {
    JDFunc;
    JDFriendsRecommentController *friendsRecommentVC = [[JDFriendsRecommentController alloc] init];
    [friendsRecommentVC.view setBackgroundColor:JDRandomColor];
    [self.navigationController pushViewController:friendsRecommentVC animated:YES];
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
