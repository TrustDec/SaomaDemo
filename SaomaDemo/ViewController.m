//
//  ViewController.m
//  SaomaDemo
//
//  Created by zhimaguanjia on 2018/1/25.
//  Copyright © 2018年 ZH. All rights reserved.
//

#import "ViewController.h"
#import "DIYScanViewController.h"
#import "LBXScanViewStyle.h"
#import "Global.h"
#import "StyleDIY.h"

@interface ViewController ()

@property(nonatomic,strong)UILabel *textL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *textL = [[UILabel alloc] initWithFrame:CGRectMake(30, 100, self.view.frame.size.width-60, 30)];
    textL.text = @"点击空白处进入下一页";
    textL.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textL];
    self.textL = textL;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self openScanVCWithStyle:[StyleDIY notSquare]];

}
- (void)openScanVCWithStyle:(LBXScanViewStyle*)style
{
    DIYScanViewController *vc = [DIYScanViewController new];
    vc.style = style;
    vc.isOpenInterestRect = YES;
    vc.libraryType = [Global sharedManager].libraryType;
    vc.scanCodeType = [Global sharedManager].scanCodeType;
    vc.SendBlock = ^(NSString *code) {
        self.textL.text = code;
    };
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
