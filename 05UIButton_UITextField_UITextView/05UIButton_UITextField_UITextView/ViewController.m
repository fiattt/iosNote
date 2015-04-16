//
//  ViewController.m
//  05UIButton_UITextField_UITextView
//
//  Created by fiattt on 15/4/16.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "ViewController.h"

//这里会用到委托（委托及类似与Android中的Listener），下面介绍引入委托的3个步骤
//1、@interface 的声明中引入委托名如16行，注意 委托名需要使用尖括号包起来
//2、设置委托对象 如 45行 71行
//3、实现委托方法 见 96行 131行

@interface ViewController ()<UITextFieldDelegate, UITextViewDelegate>{//这里使用UITextField、UITextView需要的委托
    //在这里声明全局 私有变量
    UITextField *textField; //类似于Android中的EditTextView
    UITextView  *textView;
    
//    UILabel、UITextField、UITextView区别如下：
//    UILabel 显示的文本只读，无法编辑，可以根据文字个数自动换行；
//    UITextField 可编辑本文，但是无法换行，只能在一行显示；
//    UITextView 可编辑文本，提供换行功能。
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //添加 UITextField UIButton 2个控件到self.view 上
    //*******************************************************************************
    //UITextField 是继承自 UIControl，UIControl又是继承自UIView，所以UITextField 具有UIControl和UIView的所有属性。
    textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 20, 200, 40)];
    textField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    textField.borderStyle = UITextBorderStyleRoundedRect;                        //设置边框类型
    //inputText.background = [UIImage imageNamed:@""];                           //设置背景图片
    textField.delegate = self;                                                   //设置委托对象
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;//文字内容 垂直居中，此为UIControl的属性
    [self.view addSubview:textField];
    textField.placeholder = @"请输入文字";                                         //设置默认提示文字
    //[inputText becomeFirstResponder];                                          //这句可以在初始化的时候，就使inputText变成第一响应者 弹出键盘
    
    
    
    
    
    
    //UIButton 是继承自 UIControl，具有UIControl和UIView的所有属性。
    UIButton *textFieldButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 20, 90, 40)];
    textFieldButton.backgroundColor = [UIColor redColor];
    [textFieldButton setTitle:@"清除文字" forState:UIControlStateNormal];                //设置正常状态下 Button标题
    [textFieldButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //设置正常状态下 Button标题颜色
    
    //按钮事件响应  方法名为 addTarget:[1] action:[2] forControlEvents:[3]   [1]、[2]、[3]分别为参数
    //@selector(xxxx)的作用是找到名字为xxxx的方法 会在下面声明
    //UIControlEventTouchUpInside为事件：鼠标在控件范围内抬起
    [textFieldButton addTarget:self action:@selector(onTextFieldButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:textFieldButton];
    //*******************************************************************************
    
    
    
    
    
    
    
    //添加 UITextView UIButton 2个控件到self.view 上
    //*******************************************************************************
    //UITextField 是继承自 UIControl，UIControl又是继承自UIView，所以UITextField 具有UIControl和UIView的所有属性。
    textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 70, 200, 200)];
    textView.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    textView.font = [UIFont systemFontOfSize:18];
    textView.textColor = [UIColor redColor];
    textView.textAlignment = NSTextAlignmentLeft;                                 //设置左对齐，默认也是
    textView.editable = YES;                                                      //设置为可编辑，默认也是
    textView.delegate = self;
    [self.view addSubview:textView];
    
    //UIButton 是继承自 UIControl，具有UIControl和UIView的所有属性。
    UIButton *textViewButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 150, 90, 40)];
    textViewButton.backgroundColor = [UIColor redColor];
    [textViewButton setTitle:@"清除文字" forState:UIControlStateNormal];
    [textViewButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [textViewButton addTarget:self action:@selector(onTextViewButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    //addTarget:self 设置响应点击事件的对象
    //action:@selector(onTextFieldButtonClicked:) 设置响应点击事件的对象的方法函数，我们在下面会声明这个函数
    [self.view addSubview:textViewButton];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//以下是UITextFieldDelegate 的部分委托实现
//*******************************************************************************
#pragma mark - UITextFieldDelegate 委托实现

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    // return NO to disallow editing.
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    // became first responder
    // 在这里监听UITextField becomeFirstResponder事件
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    // 在这里监听UITextField resignFirstResponder事件
}
- (BOOL)textField:(UITextField *)_textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    // return NO to not change text
    NSLog(@"inputText: %@", textField.text);
    return YES;
}

//*******************************************************************************
//#pragma mark这个用于整理代码 xcode会在顶部导航菜单将代码分隔开
#pragma mark - textFieldButton 的响应函数
- (void)onTextFieldButtonClicked:(UIButton*)button{
    [textView resignFirstResponder];
    [textField resignFirstResponder];
    textField.text = @"";
}











//以下是UITextViewDelegate 的部分委托实现
//*******************************************************************************
#pragma mark - UITextViewDelegate 委托实现

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    // return NO to disallow editing.
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    // became first responder
    // 在这里监听UITextView becomeFirstResponder事件
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    return YES;
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    // 在这里监听UITextView resignFirstResponder事件
}
- (void)textViewDidChangeSelection:(UITextView *)_textView{
    NSLog(@"textView: %@", textView.text);
}

#pragma mark - textViewButton 的响应函数
- (void)onTextViewButtonClicked:(UIButton*)button{
    [textView resignFirstResponder];
    [textField resignFirstResponder];
    textView.text = @"";
}



@end
