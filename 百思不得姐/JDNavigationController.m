//
//  JDNavigationController.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDNavigationController.h"

@interface JDNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation JDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigationController];
}

-(void)setupNavigationController {
    // 右滑返回手势：
    self.interactivePopGestureRecognizer.delegate = self;
    // 导航控制器背景：
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
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

#pragma mark - UIGestureRecognizerDelegate

// 当出现手势操作时，会调用此代理方法来决定手势是否生效：
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
#warning 如果在首页进行向右滑动操作，那么会出现无法push到其他控制器的BUG。所以此处一定要做判断：如果在第一个控制器，那么手势不生效。
    return self.childViewControllers.count > 1;
}

@end
