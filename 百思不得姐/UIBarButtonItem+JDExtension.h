//
//  UIBarButtonItem+JDExtension.h
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (JDExtension)

/**
 *  快速自定义UIBarButtonItem的方法：
 *
 *  @param normalImageName
 *  @param highlightedImageName
 *  @param target
 *  @param action
 *
 *  @return 
 */
+(UIBarButtonItem *)createBarButtonItemWithNormalImageName:(NSString *)normalImageName andHighlightedImageName:(NSString *)highlightedImageName andTarger:(id)target andAction:(SEL)action;

@end
