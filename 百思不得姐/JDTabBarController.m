//
//  JDTabBarController.m
//  BaiSiBuDeJie
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDTabBarController.h"
#import "JDCustomTabBar.h"
#import "JDNavigationController.h"
#import "JDMeController.h"
#import "JDFriendTrendsController.h"
#import "JDEssenceController.h"
#import "JDNewController.h"

@interface JDTabBarController () <JDCustomTabBarDelegate>

@end

@implementation JDTabBarController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self setupTabBarController];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupTabBarController];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 *  初始化方法：
 */
-(void)setupTabBarController {
    // 精华：
    JDEssenceController *essenceVC = [[JDEssenceController alloc] init];
    [self createChildViewControllerWithViewController:essenceVC andTitle:@"精华" andNormalImageName:@"tabBar_essence_icon" andSelectedImageName:@"tabBar_essence_click_icon"];
    // 新帖：
    JDNewController *newVC = [[JDNewController alloc] init];
    [self createChildViewControllerWithViewController:newVC andTitle:@"新帖" andNormalImageName:@"tabBar_new_icon" andSelectedImageName:@"tabBar_new_click_icon"];
    // 关注：
    JDFriendTrendsController *friendTrendsVC = [[JDFriendTrendsController alloc] init];
    [self createChildViewControllerWithViewController:friendTrendsVC andTitle:@"关注" andNormalImageName:@"tabBar_friendTrends_icon" andSelectedImageName:@"tabBar_friendTrends_click_icon"];
    // 个人：
    JDMeController *meVC = [[JDMeController alloc] init];
    [self createChildViewControllerWithViewController:meVC andTitle:@"我" andNormalImageName:@"tabBar_me_icon" andSelectedImageName:@"tabBar_me_click_icon"];
    
    // 替换系统tabBar为自定义tabBar：
    JDCustomTabBar *customTabBar = [[JDCustomTabBar alloc] initWithFrame:self.tabBar.frame];
    [self.tabBar removeFromSuperview];
    customTabBar.customTabBarDelegate = self;
    [self setValue:customTabBar forKeyPath:@"tabBar"];
    JDLog(@"%@", self.tabBar);
}

/**
 *  创建子控制器，并设置一些属性：
 *
 *  @param viewController    空子控制器；
 *  @param title             标题；
 *  @param normalImageName   普通状态图片；
 *  @param selectedImageName 选中图片。
 */
-(void)createChildViewControllerWithViewController:(UIViewController *)viewController andTitle:(NSString *)title andNormalImageName:(NSString *)normalImageName andSelectedImageName:(NSString *)selectedImageName {
    // 设置标题：
    viewController.title = title;
    // 设置普通和选中图标：
    viewController.tabBarItem.image = [[UIImage imageNamed:normalImageName] getOriginalImage];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] getOriginalImage];
    // 文字样式：
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    // 背景图片：
    [viewController.view setBackgroundColor:JDRandomColor];
    // 为每一个子控制器包装一个导航控制器：
    JDNavigationController *navVC = [[JDNavigationController alloc] initWithRootViewController:viewController];
    [self addChildViewController:navVC];
}

#pragma mark - JDCustomTabBarDelegate

-(void)customTabBar:(JDCustomTabBar *)customTabBar didClickPublishButton:(UIButton *)publishBtn {
    JDFunc;
}

@end
