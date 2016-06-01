//
//  UIImage+JDExtension.h
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JDExtension)

/**
 *  返回原始(非渲染)的图片：
 *
 *  @return 
 */
-(UIImage *)getOriginalImage;

@end
