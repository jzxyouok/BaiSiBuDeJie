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
    viewController.navigationItem.leftBarButtonItem = [self createCustomBackBarButtonItem];
    [super pushViewController:viewController animated:animated];
}

/**
 *  自定义导航栏的返回按钮：
 *
 *  @return
 */
-(UIBarButtonItem *)createCustomBackBarButtonItem {
    UIButton *backBtn = [[UIButton alloc] init];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backBtn sizeToFit];
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    [backBtn addTarget:self action:@selector(clickToReturnTheLastPage:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    return backItem;
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
