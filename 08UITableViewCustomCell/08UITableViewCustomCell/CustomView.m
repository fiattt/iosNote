//
//  CustomView.m
//  08UITableViewCustomCell
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@synthesize viewModel;


- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //*******************************************************************************
        //设置 背景透明或其他颜色，不然多次重绘时之前绘制的内容都还在，会叠加到一块儿
        //*******************************************************************************
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    //*******************************************************************************
    //绘制Cell内容，NSString UIImage 等有drawInRect或者drawAtPoint 方法的都可以在这里绘制
    //*******************************************************************************
    [[UIColor redColor] set];
    
    //绘制一张图片
    UIImage *image = [UIImage imageNamed:@"headImage.jpg"];
    //[image drawAtPoint:CGPointMake(5, 5)];
    [image drawInRect:CGRectMake(5, 5, 50, 50)];
    
    //绘制一个字符串 drawInRect: 在某个区域内 withFont: 以什么字体
    [viewModel drawInRect:CGRectMake(60, 5, 200, 30) withFont:[UIFont systemFontOfSize:18]];
    
    [[UIColor greenColor] set];
    //绘制图形
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    CGContextBeginPath(context);
    //*******************************************************************************
    //这之间的内容决定你画的是什么图形
    CGContextAddArc(context, 70, 40, 10, 0.0, 2*M_PI, NO);// (70, 40)为圆心 10 是半径
    //这之间的内容决定你画的是什么图形
    //*******************************************************************************
    CGContextFillPath(context);
    UIGraphicsPopContext();
    //*******************************************************************************
    //根据需要，你可以在这里绘制Cell内容来定制你的cell
    //那些不需要响应点击等事件的元素都可以绘制到CustomView上
    //需要响应点击事件等的UIView，如UIButton则需要addSubview到cell.contentView上
    //*******************************************************************************
}

- (void)setModel:(NSString *)model{
    viewModel = model;
    //这里setNeedsDisplay 重绘自己
    [self setNeedsDisplay];
}

@end
