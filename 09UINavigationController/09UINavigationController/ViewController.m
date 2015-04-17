//
//  ViewController.m
//  09UINavigationController
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "ViewController.h"
#import "LLViewController.h"
#import "MMViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //这里使用导航方式跳转到LLViewController，这种方式 ViewController 必须是在UINavigationController 的导航堆栈中
    //*******************************************************************************
    UIButton *pushuBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 60)];
    [pushuBtn addTarget:self action:@selector(pushuToVC:) forControlEvents:UIControlEventTouchUpInside];
    [pushuBtn setTitle:@"pushuToVC" forState:UIControlStateNormal];
    pushuBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:pushuBtn];
    //*******************************************************************************
    
    
    //这里使用展示方式跳转到LLViewController，这种方式随时可以使用，无限制
    //*******************************************************************************
    UIButton *presentBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 300, 100, 60)];
    [presentBtn addTarget:self action:@selector(presentVC:) forControlEvents:UIControlEventTouchUpInside];
    [presentBtn setTitle:@"presentVC" forState:UIControlStateNormal];
    presentBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:presentBtn];
    //*******************************************************************************
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)pushuToVC:(UIButton*)btn{
    //这里使用导航方式跳转到LLViewController
    LLViewController *viewController = [[LLViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)presentVC:(UIButton*)btn{
    //这里使用展示方式跳转到LLViewController
    MMViewController *viewController = [[MMViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:^{
        
    }];
}

@end
