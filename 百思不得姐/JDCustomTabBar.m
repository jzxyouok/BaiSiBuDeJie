//
//  JDCustomTabBar.m
//  百思不得姐
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDCustomTabBar.h"

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
 *  初始化：
 */
-(void)setupCustomTabBar {
    
}

@end
