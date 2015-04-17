//
//  CustomCell.m
//  08UITableViewCustomCell
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import "CustomCell.h"
#import "CustomView.h"

@interface CustomCell() {
    CustomView *cView;
}
@end

@implementation CustomCell
@synthesize cellModel;//@property和@synthesize一起使用 声明变量及隐式的生成了get和set方法


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//instancetype指返回类型的方法返回所在类的类型
//NS_AVAILABLE_IOS(3_0)表示ios3.0及以上版本可以使用这个函数，否则会crash
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier NS_AVAILABLE_IOS(3_0){
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){//如果对象存在
        [cView removeFromSuperview];
        //*******************************************************************************
        //实例化 cView 并添加到 cell的contentView 上
        //那些不需要响应点击等事件的元素都可以绘制到CustomView上
        //需要响应点击事件等的UIView，如UIButton则需要addSubview到self.contentView上
        //*******************************************************************************
        cView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, [CustomCell cellHeight])];
        [self.contentView addSubview:cView];
    }
    
    return self;
}

- (void)setModel:(NSString *)model{
    cellModel = model;
    cView.viewModel = cellModel;
}

+ (float)cellHeight{
    return 60;//如果你需要高度随内容变化的cell，在这里返回高度计算结果
}
@end
