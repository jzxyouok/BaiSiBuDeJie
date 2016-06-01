//
//  UIImage+JDExtension.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "UIImage+JDExtension.h"

@implementation UIImage (JDExtension)

-(UIImage *)getOriginalImage {
    [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return self;
}

@end
