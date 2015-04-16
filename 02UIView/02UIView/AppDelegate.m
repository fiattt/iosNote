//
//  AppDelegate.m
//  02UIView
//
//  Created by fiattt on 15/4/16.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //实例化一个UIView
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    myView.backgroundColor = [UIColor redColor];
    
    //添加view到window上
    [self.window addSubview:myView];

//    //运营商、电池信息的那个状态栏挡住了myView,可以重新设置下坐标
//    [myView setFrame:CGRectMake(0, 20, 100, 100)];

    
//上面问题也可以隐藏状态栏来解决
//    原来在ios6里的隐藏状态栏的方式为:
//    在AppController类的方法didFinishLaunchingWithOptions中增加以下语句：
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
//    
//    以上方式在ios7中无效，ios7中隐藏顶部状态栏的方法为：
//    在RootViewController中重写方法prefersStatusBarHidden，增加以下代码：
//    
//    - (BOOL)prefersStatusBarHidden
//    {
//        return YES;
//    }
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
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
