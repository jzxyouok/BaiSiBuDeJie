//
//  JDCustomTabBar.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDCustomTabBar.h"

// tabBar可见子控件总数：
#define tabBarSubviewsCount 5

@interface JDCustomTabBar ()

// 中间的发送按钮：
@property (nonatomic, weak) UIButton *publishButton;

@end

@implementation JDCustomTabBar

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupCustomTabBar];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupCustomTabBar];
    }
    return self;
}

/**
 *  添加中间的撰写按钮：
 */
-(void)addPublishButton {
    UIButton *publishBtn = [[UIButton alloc] init];
    [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
    [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
    [self addSubview:publishBtn];
    self.publishButton = publishBtn;
    [publishBtn addTarget:self action:@selector(clickToIntoPublishPage:) forControlEvents:UIControlEventTouchUpInside];
}

/**
 *  点击按钮进入撰写段子界面：
 *
 *  @param publishBtn 
 */
-(void)clickToIntoPublishPage:(UIButton *)publishBtn {
    // 执行代理：
    if ([self.customTabBarDelegate respondsToSelector:@selector(customTabBar:didClickPublishButton:)]) {
        [self.customTabBarDelegate customTabBar:self didClickPublishButton:publishBtn];
    }
}

/**
 *  初始化：
 */
-(void)setupCustomTabBar {
    [self addPublishButton];
}

-(void)layoutSubviews {
    [super layoutSubviews];
    // 按钮的尺寸：
    NSInteger index = 0;
    CGFloat width = self.jd_width / tabBarSubviewsCount;
    CGFloat height = self.jd_height;
    CGFloat x = 0;
    CGFloat y = 0;
    // 遍历tabBar的所有子控件：
    for (UIView *subview in self.subviews) {
        // 设置UITabBarButton的尺寸：
        if (subview.class == NSClassFromString(@"UITabBarButton")) {
            x = index * width;
            subview.frame = CGRectMake(x, y, width, height);
            // 为中间按钮腾出位置：
            if (index == 1) {
                index++;
            }
            index++;
        }
    }
    // 中间按钮的尺寸：
    [self.publishButton sizeToFit];
    self.publishButton.jd_x = (self.jd_width - self.publishButton.jd_width) * 0.5;
    self.publishButton.jd_y = (self.jd_height - self.publishButton.jd_height) * 0.5;
}

@end
