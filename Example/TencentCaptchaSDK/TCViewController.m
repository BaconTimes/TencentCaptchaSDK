//
//  TCViewController.m
//  TencentCaptchaSDK
//
//  Created by lipeigen on 10/14/2020.
//  Copyright (c) 2020 lipeigen. All rights reserved.
//

#import "TCViewController.h"

@import TencentCaptchaSDK;

@interface TCViewController ()<TCCaptchaViewDelegate>

@property (nonatomic, strong) TencentCaptchaSDK  *tcSDK;

@end

@implementation TCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = UIColor.cyanColor;
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    _tcSDK = [TencentCaptchaSDK shareInstance];
    _tcSDK.appId = @"your appid";
    _tcSDK.delegate = self;
}

- (void)tcWebCodeWillShow {
    NSLog(@"%s", __FUNCTION__);
}

- (void)tcWebCodeDidHide {
    NSLog(@"%s", __FUNCTION__);
}

- (void)btnClick:(id)sender {
    [_tcSDK startVerifyCompletion:^(BOOL successed, NSString * _Nullable ticket, NSString * _Nullable randStr) {
        NSLog(@"success = %@, ticket = %@, randStr = %@", @(successed), ticket, randStr);
    }];
}

@end
