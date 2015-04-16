//
//  AppDelegate.m
//  UIWindow
//
//  Created by fiattt on 15/4/16.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    初始化一个UIWindows对象，使用方法initWithFrame，传入的参数是CGRect类型
//    bounds是View的一个属性，定义view在本地坐标系统中的位置和大小http://blog.csdn.net/mad1989/article/details/8711697
//    bounds这里是设备internal screen的属性
//    也可以用CGRectMake(0, 0, 100, 100) 自己重新定制一个
//    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    self.window.backgroundColor = [UIColor whiteColor];//设置颜色
//    self.window.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];//使用RBG颜色 r g b 取值区间为 0~1
//    UIImage *backImage = [UIImage imageNamed:@"background"];//使用图片  todo:咋拿到本地图片？
//    self.window.backgroundColor = [UIColor colorWithPatternImage:backImage];
    
    [self.window makeKeyAndVisible];//使得window可见
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
