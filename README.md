# HRCustomBaseControls
快速的创建基本UI控件，提升你码UI的速度(写UI的时候不会再繁琐的创建基础控件了)一个控件，一句代码就可以搞定




创建UILabel
+(UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment supView:(UIView *)supView;

创建UIButton
+(UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor font:(UIFont *)font delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

创建UITextFiled
+(UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder borderStyle:(UITextBorderStyle)borderStyle text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font bgColor:(UIColor *)bgColor isSecure:(BOOL)isSecure supView:(UIView *)supView;

创建UIView
+(UIView *)viewWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor supView:(UIView *)supView;

创建UISlider
+(UISlider *)sliderWithFrame:(CGRect)frame minValue:(float)minValue maxValue:(float)maxValue minColor:(UIColor *)minColor maxColor:(UIColor *)maxColor thumbColor:(UIColor *)thumbColor value:(float)value delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

创建UISwitch
+(UISwitch *)switchWithFrame:(CGRect)frame tintColor:(UIColor *)tintColor onTintColor:(UIColor *)onTintColor thumbColor:(UIColor *)thumbColor isOn:(BOOL)isOn delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;
创建UISegmentedControl
+(UISegmentedControl *)segmentWithFrame:(CGRect)frame items:(NSArray *)items selectedIndex:(NSInteger)selectedIndex tintColor:(UIColor *)tintColor  bgColor:(UIColor *)bgColor delegate:(id)delegate action:(SEL)action supView:(UIView *)supView;

创建UITextView
+(UITextView *)textViewWithFrame:(CGRect)frame delegate:(id)delegate text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor editable:(BOOL)editable selectable:(BOOL)selectable supView:(UIView *)supView;

创建UIImageView
+(UIImageView *)imageViewWithFrame:(CGRect)frame userInteractionEnabled:(BOOL)enable image:(UIImage *)image supView:(UIView *)supView;

创建UIProgressView
+(UIProgressView *)progressViewWithFrame:(CGRect)frame progressViewStyle:(UIProgressViewStyle)progressViewStyle progressTintColor:(UIColor *)progressTintColor trackTintColor:(UIColor *)trackTintColor progress:(float)progress supView:(UIView *)supView;

创建UITableView
//用来初始化TableView，其他功能自己添加
+(UITableView *)tableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource rowHeight:(CGFloat)rowHeight bounces:(BOOL)bounces supView:(UIView *)supView;

创建UIAlertView
//只显示标题和消息（用来提示，不存在关联事件）
+(void)alertViewWithTitle:(NSString *)title message:(NSString *)message;

