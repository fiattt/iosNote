//
//  CustomCell.h
//  08UITableViewCustomCell
//
//  Created by fiattt on 15/4/17.
//  Copyright (c) 2015年 fiattt. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface CustomCell : UITableViewCell

@property (nonatomic, strong) NSString *cellModel;//这里为了简洁就不引入Model新类，用String先代替

+ (float)cellHeight;

@end
