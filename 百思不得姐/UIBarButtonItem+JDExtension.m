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

@end
