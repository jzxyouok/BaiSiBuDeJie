//
//  UIView+JDExtension.h
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JDExtension)

@property (nonatomic, assign) CGFloat jd_x;
@property (nonatomic, assign) CGFloat jd_y;
@property (nonatomic, assign) CGFloat jd_width;
@property (nonatomic, assign) CGFloat jd_height;
@property (nonatomic, assign) CGSize jd_size;
@property (nonatomic, assign) CGFloat jd_centerX;
@property (nonatomic, assign) CGFloat jd_centerY;

@property (nonatomic, assign, readonly) CGFloat jd_right;
@property (nonatomic, assign, readonly) CGFloat jd_bootom;

@end
