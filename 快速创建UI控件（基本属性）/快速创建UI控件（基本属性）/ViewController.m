//
//  ViewController.m
//  快速创建UI控件（基本属性）
//
//  Created by innket on 16/7/6.
//  Copyright © 2016年 黄冉. All rights reserved.
//

#import "ViewController.h"
#import "HRCustomBaseControls.h"
#define space 20
#define h 40
#define HRScreenW [UIScreen mainScreen].bounds.size.width
#define HRScreenH [UIScreen mainScreen].bounds.size.height
#define w HRScreenW/2-20
#define y(i) (space+h)*i+space
#define font_size 15

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UILabel            * customLabel;
@property (nonatomic,strong) UIButton           * customButton;
@property (nonatomic,strong) UITextField        * customTextField;
@property (nonatomic,strong) UIView             * customView;
@property (nonatomic,strong) UITextView         * customTextView;
@property (nonatomic,strong) UISlider           * customSlider;
@property (nonatomic,strong) UISwitch           * customSwitch;
@property (nonatomic,strong) UISegmentedControl * customSegment;
@property (nonatomic,strong) UIImageView        * customImageView;
@property (nonatomic,strong) UIProgressView     * customProgress;
@property (nonatomic,strong) UITableView        * customTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UILabel
    _customLabel = [HRCustomBaseControls labelWithFrame:FRAME(10, space, w, h) text:@"我是一个UILabel" textColor:[UIColor redColor] bgColor:[UIColor blackColor] font:[UIFont systemFontOfSize:font_size] textAlignment:NSTextAlignmentCenter supView:self.view];
    
    //UIButton
    _customButton = [HRCustomBaseControls buttonWithFrame:FRAME(10, y(1), w, h) title:@"我是一个UIButton" titleColor:[UIColor whiteColor] backgroundColor:[UIColor redColor] font:[UIFont systemFontOfSize:font_size] delegate:self action:@selector(click:) supView:self.view];
    
    //UITextField
    _customTextField = [HRCustomBaseControls textFieldWithFrame:FRAME(10, y(2), w, h) placeholder:@"我是一个UITextField" borderStyle:UITextBorderStyleRoundedRect text:@"我是一个UITextField" textColor:[UIColor blueColor] font:[UIFont systemFontOfSize:font_size] bgColor:nil isSecure:NO supView:self.view];
    //UITextView
    _customTextView = [HRCustomBaseControls textViewWithFrame:FRAME(10, y(3), w, h) delegate:self text:@"我是一个UITextView" font:[UIFont systemFontOfSize:font_size] textColor:[UIColor greenColor] bgColor:[UIColor darkGrayColor] editable:YES selectable:YES supView:self.view];
    
    //UIView
    _customView = [HRCustomBaseControls viewWithFrame:FRAME(10, y(4), w, h) bgColor:[UIColor brownColor] supView:self.view];
    
    //UISlider
    _customSlider = [HRCustomBaseControls sliderWithFrame:FRAME(10, y(5), w, h) minValue:0.0 maxValue:1.0 minColor:[UIColor redColor] maxColor:[UIColor grayColor] thumbColor:nil value:0.5 delegate:self action:@selector(sliderChange:) supView:self.view];
    
    //UISwitch
    _customView = [HRCustomBaseControls switchWithFrame:FRAME(10, y(6), w, h) tintColor:[UIColor redColor] onTintColor:[UIColor greenColor] thumbColor:[UIColor yellowColor] isOn:YES delegate:self action:@selector(switchOn:) supView:self.view];
    
    //UISegmentControl
    _customSegment = [HRCustomBaseControls segmentWithFrame:FRAME(10, y(7), w, h) items:@[@"第一个",@"第二个",@"第三个"] selectedIndex:2 tintColor:[UIColor redColor]  bgColor:[UIColor whiteColor] delegate:self action:@selector(segmentChange:) supView:self.view];
    
    //UIProgressView
    _customProgress = [HRCustomBaseControls progressViewWithFrame:FRAME(10, y(8), w, h) progressViewStyle:UIProgressViewStyleDefault progressTintColor:[UIColor redColor] trackTintColor:[UIColor grayColor] progress:0.5 supView:self.view];
    
    //UITableView
    _customTableView = [HRCustomBaseControls tableViewWithFrame:FRAME(HRScreenW/2, 20, HRScreenW/2-10, HRScreenH-120) style:UITableViewStylePlain delegate:self dataSource:self rowHeight:40 bounces:YES supView:self.view];
    
    //UIImageView
    _customImageView = [HRCustomBaseControls imageViewWithFrame:FRAME(HRScreenW/2, HRScreenH-120,HRScreenW/2-10, 100) userInteractionEnabled:YES image:[UIImage imageNamed:@"image.jpg"] supView:self.view];
    
}
-(void)click:(UIButton *)btn{
    NSLog(@"点击了按钮");
}
-(void)sliderChange:(UISlider *)slider{
    NSLog(@"%f",slider.value);
}
-(void)switchOn:(UISwitch *)swit{
    NSLog(@"%d",swit.on);
}
-(void)segmentChange:(UISegmentedControl *)segment{
    NSLog(@"%@",[segment titleForSegmentAtIndex:segment.selectedSegmentIndex]);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * IDE = @"CELL";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:IDE];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:IDE];
    }
    cell.textLabel.text = @"我是一个Cell";
    return cell;
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
