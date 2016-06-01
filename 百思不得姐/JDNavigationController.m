//
//  JDNavigationController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDNavigationController.h"

@interface JDNavigationController ()

@end

@implementation JDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 *  重写push方法，拦截push操作，替换系统自己的返回按钮：
 *
 *  @param viewController
 *  @param animated       
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 默认第一层的导航控制器不添加返回按钮：
    if (self.childViewControllers.count) {
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem createCustomBackBarButtonItemWithTarget:self andAction:@selector(clickToReturnTheLastPage:)];
        // push时隐藏tabBar：
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

/**
 *  点击返回上一个页面：
 *
 *  @param sender
 */
-(void)clickToReturnTheLastPage:(UIButton *)sender {
    JDFunc;
    [self popViewControllerAnimated:YES];
}

@end
