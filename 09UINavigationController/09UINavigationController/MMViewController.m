//
//  MMViewController.m
//  09UINavigationController
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
    
    UIButton *dismissVCBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 60)];
    [dismissVCBtn addTarget:self action:@selector(dismissVC:) forControlEvents:UIControlEventTouchUpInside];
    [dismissVCBtn setTitle:@"dismissVC" forState:UIControlStateNormal];
    dismissVCBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:dismissVCBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dismissVC:(UIButton*)btn{
    
    //由于是present过来的，这里使用dismiss方式回去
    //*******************************************************************************
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
