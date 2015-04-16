//
//  ViewController.m
//  04UIView_UIImageView_UILabel
//
//  Created by fiattt on 15/4/16.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //分别添加 UIView   UIImageView   UILabel 3个控件到self.view 上
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 100, 100)];
    view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 130, 150, 100)];
    imageView.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.6];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, 200, 100)];
    label.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.6];
    [self.view addSubview:label];
    
    //编译运行。我们会看到3个控件除了我们分别设置的背景色 r g b 不同其余都一样，
    //查看他们的头文件可见，他们都是UIView的子类,本质上就是UIView，不过是根据自己的需求定制化了不同的功能而已
    //*******************************************************************************
    
    //下面我们分别设置 imageView、 label 的各自属性 来看看他们的不同,
    //*******************************************************************************
    imageView.image = [UIImage imageNamed:@"mao.jpg"];
    label.text = @"这是一只猫。";
    //编译运行。 到这里我们可以看到他们各自独特的属性，一个可以设置图片属性，一个可以设置文字属性。
    
    //以下是UILabel的一些其他属性，你可以试着修改，并观察效果。
//        label.font = [UIFont systemFontOfSize:60];
//        label.textColor = [UIColor whiteColor];
//        label.shadowColor = [UIColor yellowColor];
//        label.shadowOffset = CGSizeMake(1, 1);
//        label.textAlignment = NSTextAlignmentCenter;
//        label.lineBreakMode = NSLineBreakByCharWrapping;//以字符为显示单位显示，后面部分省略不显示。
//        label.lineBreakMode = NSLineBreakByClipping;//剪切与文本宽度相同的内容长度，后半部分被删除。
//        label.lineBreakMode = NSLineBreakByTruncatingHead;//前面部分文字以……方式省略，显示尾部文字内容。
//        label.lineBreakMode = NSLineBreakByTruncatingMiddle;//中间的内容以……方式省略，显示头尾的文字内容。
//        label.lineBreakMode = NSLineBreakByTruncatingTail;//结尾部分的内容以……方式省略，显示头的文字内容。
//        label.lineBreakMode = NSLineBreakByWordWrapping;//以单词为显示单位显示，后面部分省略不显示。
    
    
    
//        NSString *txt = @"dffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
//        label.text = txt;
//        label.numberOfLines = 0; ///相当于不限制行数
//        [label sizeToFit];
    
    
    
//    NSString *txt = @"dffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
//    label.text = txt;
//    label.numberOfLines = 3; ///限制在3行内自适应
//    [label sizeToFit];

    
    
//    //从网络得到图片  这个在主进程中在跑 会卡   后续应该放在线程中进行加载
//    UIImage *image = [[UIImage alloc]initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://pic21.nipic.com/20120604/10209159_110645695180_2.jpg"]]];
//    imageView.image = image;
//    label.text = @"这是一只狗";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
