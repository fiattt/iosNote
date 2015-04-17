//
//  MMViewController.m
//  10UITabBarViewController
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //这里设置一些区别，方便切换时观察效果
    //*******************************************************************************
    self.title = @"书签";
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
