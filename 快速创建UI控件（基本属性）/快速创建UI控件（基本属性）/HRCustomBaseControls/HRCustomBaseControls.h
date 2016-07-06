//
//  HRCustomBaseControls.h
//  CustomControls
//
//  Created by innket on 16/7/6.
//  Copyright © 2016年 黄冉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define FRAME(x,y,width,height) CGRectMake(x, y, width,height)
@interface HRCustomBaseControls : NSObject

#pragma mark UILabel
+(UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment supView:(UIView *)supView;

#pragma mark UIButton
+(UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor font:(UIFont *)font delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

#pragma mark UITextFiled
+(UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder borderStyle:(UITextBorderStyle)borderStyle text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font bgColor:(UIColor *)bgColor isSecure:(BOOL)isSecure supView:(UIView *)supView;

#pragma mark UIView
+(UIView *)viewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor supView:(UIView *)supView;

#pragma mark UISlider
+(UISlider *)sliderWithFrame:(CGRect)frame minValue:(float)minValue maxValue:(float)maxValue minColor:(UIColor *)minColor maxColor:(UIColor *)maxColor thumbColor:(UIColor *)thumbColor value:(float)value delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

#pragma mark UISwitch
+(UISwitch *)switchWithFrame:(CGRect)frame tintColor:(UIColor *)tintColor onTintColor:(UIColor *)onTintColor thumbColor:(UIColor *)thumbColor isOn:(BOOL)isOn delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;
#pragma mark UISegmentedControl
+(UISegmentedControl *)segmentWithFrame:(CGRect)frame items:(NSArray *)items selectedIndex:(NSInteger)selectedIndex tintColor:(UIColor *)tintColor  bgColor:(UIColor *)bgColor delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

#pragma mark UITextView
+(UITextView *)textViewWithFrame:(CGRect)frame delegate:(id)delegate text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor editable:(BOOL)editable selectable:(BOOL)selectable supView:(UIView *)supView;

#pragma mark UIImageView
+(UIImageView *)imageViewWithFrame:(CGRect)frame userInteractionEnabled:(BOOL)enable image:(UIImage *)image supView:(UIView *)supView;

#pragma mark UIProgressView
+(UIProgressView *)progressViewWithFrame:(CGRect)frame progressViewStyle:(UIProgressViewStyle)progressViewStyle progressTintColor:(UIColor *)progressTintColor trackTintColor:(UIColor *)trackTintColor progress:(float)progress supView:(UIView *)supView;

#pragma mark UITableView
//用来初始化TableView，其他功能自己添加
+(UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource rowHeight:(CGFloat)rowHeight bounces:(BOOL)bounces supView:(UIView *)supView;

#pragma mark UIAlertView
//只显示标题和消息（用来提示，不存在关联事件）
+(void)alertViewWithTitle:(NSString *)title message:(NSString *)message;

@end
