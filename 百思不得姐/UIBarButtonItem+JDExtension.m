//
//  UIBarButtonItem+JDExtension.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "UIBarButtonItem+JDExtension.h"

@implementation UIBarButtonItem (JDExtension)

+(UIBarButtonItem *)createBarButtonItemWithNormalImageName:(NSString *)normalImageName andHighlightedImageName:(NSString *)highlightedImageName andTarger:(id)target andAction:(SEL)action {
    UIButton *customBtn = [[UIButton alloc] init];
    [customBtn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [customBtn setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    [customBtn sizeToFit];
    [customBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:customBtn];
}

+(UIBarButtonItem *)createCustomBackBarButtonItemWithTarget:(id)target andAction:(SEL)action {
    UIButton *backBtn = [[UIButton alloc] init];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backBtn sizeToFit];
    backBtn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    return backItem;
}

@end
