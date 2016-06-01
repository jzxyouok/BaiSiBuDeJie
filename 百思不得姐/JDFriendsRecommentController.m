//
//  JDFriendsRecommentController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDFriendsRecommentController.h"

@interface JDFriendsRecommentController ()

@end

@implementation JDFriendsRecommentController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupFriendsRecommentController];
}

-(void)setupFriendsRecommentController {
    self.navigationItem.title = @"推荐关注";
}

@end
