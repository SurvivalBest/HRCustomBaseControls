//
//  HRCustomBaseControls.m
//  CustomControls
//
//  Created by innket on 16/7/6.
//  Copyright © 2016年 黄冉. All rights reserved.
//

#import "HRCustomBaseControls.h"

@implementation HRCustomBaseControls

#pragma mark UILabel
+(UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment  supView:(UIView *)supView{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.backgroundColor = bgColor;
    label.font = font;
    label.textAlignment = textAlignment;
    [supView addSubview:label];
    return label;
}
#pragma mark UIButton
+(UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor font:(UIFont *)font delegate:(id)delegate action:(SEL)action supView:(UIView *)supView{
    UIButton * button = [[UIButton alloc]initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.backgroundColor = backgroundColor;
    button.titleLabel.font = font;
    [button addTarget:delegate action:action forControlEvents:UIControlEventTouchUpInside];
    [supView addSubview:button];
    return button;
}

#pragma mark UITextField
+(UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder borderStyle:(UITextBorderStyle)borderStyle text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font bgColor:(UIColor *)bgColor isSecure:(BOOL)isSecure supView:(UIView *)supView{
    UITextField * textField = [[UITextField alloc]initWithFrame:frame];
    textField.placeholder = placeholder;
    textField.borderStyle = borderStyle;
    textField.text = text;
    textField.textColor = textColor;
    textField.font = font;
    textField.backgroundColor = bgColor;
    if (isSecure) {
        textField.secureTextEntry = YES;
    }
    [supView addSubview:textField];
    return textField;
}
#pragma mark UIView
+(UIView *)viewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor supView:(UIView *)supView{
    UIView * view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = bgColor;
    [supView addSubview:view];
    return view;
}
#pragma mark UISlider
+(UISlider *)sliderWithFrame:(CGRect)frame minValue:(float)minValue maxValue:(float)maxValue minColor:(UIColor *)minColor maxColor:(UIColor *)maxColor thumbColor:(UIColor *)thumbColor value:(float)value delegate:(id)delegate action:(SEL)action supView:(UIView *)supView{
    UISlider * slider = [[UISlider alloc]initWithFrame:frame];
    slider.minimumValue = minValue;
    slider.maximumValue = maxValue;
    slider.minimumTrackTintColor = minColor;
    slider.maximumTrackTintColor = maxColor;
    slider.value = value;
    [slider addTarget:delegate action:action forControlEvents:UIControlEventValueChanged];
    [supView addSubview:slider];
    return slider;
}
#pragma mark UISwitch
+(UISwitch *)switchWithFrame:(CGRect)frame tintColor:(UIColor *)tintColor onTintColor:(UIColor *)onTintColor thumbColor:(UIColor *)thumbColor isOn:(BOOL)isOn delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;{
    UISwitch * swit = [[UISwitch alloc]initWithFrame:frame];
    swit.tintColor = tintColor;
    swit.onTintColor = onTintColor;
    swit.thumbTintColor = thumbColor;
    swit.on = isOn;
    [swit addTarget:delegate action:action forControlEvents:UIControlEventTouchUpInside];
    [supView addSubview:swit];
    return swit;
}

#pragma mark UISegmentedControl
+(UISegmentedControl *)segmentWithFrame:(CGRect)frame items:(NSArray *)items selectedIndex:(NSInteger)selectedIndex tintColor:(UIColor *)tintColor  bgColor:(UIColor *)bgColor delegate:(id)delegate action:(SEL)action supView:(UIView *)supView{
    UISegmentedControl * segment = [[UISegmentedControl alloc]initWithItems:items];
    segment.frame = frame;
    segment.selectedSegmentIndex = selectedIndex;
    [segment addTarget:delegate action:action forControlEvents:UIControlEventValueChanged];
    segment.tintColor = tintColor;
    segment.backgroundColor = bgColor;
    [supView addSubview:segment];
    return segment;
}
#pragma mark UITextView
+(UITextView *)textViewWithFrame:(CGRect)frame delegate:(id)delegate text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor editable:(BOOL)editable selectable:(BOOL)selectable supView:(UIView *)supView{
    UITextView * textView = [[UITextView alloc]initWithFrame:frame];
    textView.delegate = delegate;
    textView.text = text;
    textView.font = font;
    textView.textColor = textColor;
    textView.editable = editable;
    textView.selectable = selectable;
    textView.backgroundColor = bgColor;
    [supView addSubview:textView];
    return textView;
}

#pragma mark UIImageView
+(UIImageView *)imageViewWithFrame:(CGRect)frame userInteractionEnabled:(BOOL)enable image:(UIImage *)image supView:(UIView *)supView{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = image;
    imageView.userInteractionEnabled = enable;
    [supView addSubview:imageView];
    return imageView;
}

#pragma mark UIProgressView
+(UIProgressView *)progressViewWithFrame:(CGRect)frame progressViewStyle:(UIProgressViewStyle)progressViewStyle progressTintColor:(UIColor *)progressTintColor trackTintColor:(UIColor *)trackTintColor progress:(float)progress supView:(UIView *)supView{
    UIProgressView * progressView = [[UIProgressView alloc]initWithFrame:frame];
    progressView.progressViewStyle = progressViewStyle;
    progressView.progressTintColor = progressTintColor;
    progressView.trackTintColor = trackTintColor;
    progressView.progress = progress;
    [supView addSubview:progressView];
    return progressView;
}

#pragma mark UITableView
//用来初始化TableView，其他功能自己添加
+(UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource rowHeight:(CGFloat)rowHeight bounces:(BOOL)bounces supView:(UIView *)supView{
    UITableView * tableView = [[UITableView alloc]initWithFrame:frame style:style];
    tableView.delegate = delegate;
    tableView.dataSource = dataSource;
    tableView.bounces = bounces;
    tableView.rowHeight = rowHeight;
    [supView addSubview:tableView];
    return tableView;
}

#pragma mark UIAlertView
//只显示标题和消息（用来提示，不存在关联事件）
+(void)alertViewWithTitle:(NSString *)title message:(NSString *)message{
    [[[UIAlertView alloc]initWithTitle:title message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil]show];
}

@end
