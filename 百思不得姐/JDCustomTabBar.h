//
//  JDCustomTabBar.h
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JDCustomTabBar;

@protocol JDCustomTabBarDelegate <NSObject>

/**
 *  publish按钮点击的代理方法：
 *
 *  @param customTabBar
 *  @param publishBtn
 */
-(void)customTabBar:(JDCustomTabBar *)customTabBar didClickPublishButton:(UIButton *)publishBtn;

@end

@interface JDCustomTabBar : UITabBar

// 代理属性：
@property (nonatomic, weak) id<JDCustomTabBarDelegate> customTabBarDelegate;

@end
