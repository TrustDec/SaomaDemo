//
//  ViewController.h
//  SaomaDemo
//
//  Created by zhimaguanjia on 2018/1/25.
//  Copyright © 2018年 ZH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <LBXScanViewController.h>
@interface ViewController : LBXScanViewController

#pragma mark - 底部几个功能：开启闪光灯、相册、我的二维码
//底部显示的功能项
@property (nonatomic, strong) UIView *bottomItemsView;
//相册
@property (nonatomic, strong) UIButton *btnPhoto;
//闪光灯
@property (nonatomic, strong) UIButton *btnFlash;

//我的二维码
//@property (nonatomic, strong) UIButton *btnMyQR;

@end

