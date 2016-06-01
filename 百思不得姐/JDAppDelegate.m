//
//  JDAppDelegate.m
//  BaiSiBuDeJie
//
//  Created by JiangDi on 16/6/1.
//  Copyright © 2016年 Google. All rights reserved.
//

#import "JDAppDelegate.h"
#import "JDTabBarController.h"

@interface JDAppDelegate ()

@end

@implementation JDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [[UIWindow alloc] initWithFrame:JDScreenBounds];
    JDTabBarController *tabBarVC = [[JDTabBarController alloc] init];
    window.rootViewController = tabBarVC;
    [window makeKeyAndVisible];
    self.window = window;
    return YES;
}

@end
