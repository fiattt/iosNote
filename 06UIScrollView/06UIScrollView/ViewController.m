//
//  ViewController.m
//  06UIScrollView
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect frame = [self.view bounds];//这里frame不带星号* 是应为这玩意是结构体
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, frame.size.width, frame.size.height)];
    [self.view addSubview: scrollView];
    
    scrollView.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    //到这里 我们已经往屏幕上成功的添加一个scrollView了
    
    //*******************************************************************************
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 300, 40)];
    label.text = @"这是UISCrollView";
    [scrollView addSubview:label];
    //这里我们添加一个label 到background 上，来帮助我们观察background 的移动
    
    //编译运行.
    //是不是什么效果也没有，也不滚动?
    //*******************************************************************************
    //现在，我们就再设置几个属性
    //contentSize;                    // default CGSizeZero
    scrollView.contentSize = CGSizeMake(frame.size.width, frame.size.height + 500);//这里设置background 的contentSize（内容区）比它的frame高度高 500，
    //编译运行. 我们可以看到上下拖动屏幕可以滚动了。
    
    //再试一试改变宽度
//    scrollView.contentSize = CGSizeMake(frame.size.width + 500, frame.size.height);//这里设置background 的contentSize（内容区）比它的frame宽度宽 500，
    //记住：只有当contentSize 的宽度或高度 大于 frame的宽度或者高度时，它才能横向或者纵向滚动。
    //*******************************************************************************
    
    //*******************************************************************************
    //关于contentOffset与contentInset的解释http://blog.sina.com.cn/s/blog_7b9d64af010190h7.html
    //contentOffset是scrollview中内容的偏移量，contentInset则类似与padding这个概念
    //contentOffset;                  // default CGPointZero
//    scrollView.contentOffset = CGPointMake(100, 200);

    //contentInset;                   // default UIEdgeInsetsZero. add additional scroll area around content
//    scrollView.contentInset = UIEdgeInsetsMake(40, 0, 0, 40);

    
    //*******************************************************************************
    //设置委托
    scrollView.delegate = self;//这里设置委托对象为VC自己，同样需要在@interface ViewController处加上委托，然后在下面实现委托的方法
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    // any offset changes
    NSLog(@"%f",scrollView.contentOffset.y);//这里我们输出 scrollView的纵向 偏移量
}
// called on start of dragging (may require some time and or distance to move)
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDragging");
}
// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"scrollViewDidEndDragging willDecelerate");
}
// called on finger up as we are moving
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDecelerating");
}
// called when scroll view grinds to a halt
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidEndDecelerating");
}



@end
