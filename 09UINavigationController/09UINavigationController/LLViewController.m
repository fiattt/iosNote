//
//  LLViewController.m
//  09UINavigationController
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "LLViewController.h"

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *popBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 60)];
    [popBtn addTarget:self action:@selector(popVC:) forControlEvents:UIControlEventTouchUpInside];
    [popBtn setTitle:@"popVC" forState:UIControlStateNormal];
    popBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:popBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)popVC:(UIButton*)btn{
    //由于是push过来的，这里使用pop方式导航回去
    //*******************************************************************************
    [self.navigationController popViewControllerAnimated:YES];
    //*******************************************************************************
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
