//
//  ViewController.m
//  07TableView
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "ViewController.h"

//*******************************************************************************
//这里我们添加UITableView 的两个委托
//*******************************************************************************
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    NSArray *dataArray;//这里声明私有变量  记得把{}加上 不然报错
}
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = [self.view bounds];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, frame.size.width, frame.size.height)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    dataArray = [NSArray arrayWithObjects:
                 @"Google", @"百　度", @"网　易", @"微 博", @"优 酷 网", @"淘 宝 网",
                 @"亚 马 逊", @"艺龙酒店", @"美 团 网", @"上品折扣", @"C N T V", @"腾  讯",
                 @"新  浪", @"当　当", @"凤 凰 网", @"MSN中文网", @"猫　扑", @"",nil];
    
    [tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDataSource
//委托里 @required 的必须实现  操作：点击到UITableViewDataSource中将@required方法copy过来挨个实现
//TODO: 待查找方便xcode插件自动补全@required方法 类似Android中IDE自动补生成监听器待实现的方法壳子
//使用Alcatraz来管理Xcode插件http://blog.devtang.com/blog/2014/03/05/use-alcatraz-to-manage-xcode-plugins/?utm_source=tuicool

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [dataArray count];//返回   对应的section有多少个元素，也就是多少行。
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{//在这个地方来定制各种个性化的 cell元素
    static NSString *CellIdentifier = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //config the cell
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    return cell;
}


#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", [dataArray objectAtIndex:indexPath.row]);
}

@end


