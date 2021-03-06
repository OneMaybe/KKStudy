//
//  BaseViewController.m
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import "BaseViewController.h"
#import <MBProgressHUD/MBProgressHUD.h>
#import "DSNavigationBar.h"

@interface BaseViewController ()<MBProgressHUDDelegate>

@end

@implementation BaseViewController
{
    MBProgressHUD *HUD;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // 设置夜间模式背景色
    self.view.nightBackgroundColor = NightBGViewColor;
    //设置标题栏不能覆盖下面viewcontroller的内容
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (void)setUpNavigationBarShowRightBarButtonItem:(BOOL)show {
    // 显示导航栏上的《一个》图标
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navLogo"]];
    if (show) {
        // 初始化导航栏右侧的分享按钮
        UIButton *shareButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
        [shareButton setBackgroundImage:[UIImage imageNamed:@"nav_share_btn_normal"] forState:UIControlStateNormal];
        [shareButton setBackgroundImage:[UIImage imageNamed:@"nav_share_btn_highlighted"] forState:UIControlStateHighlighted];
        
        UIBarButtonItem *shareItem = [[UIBarButtonItem alloc] initWithCustomView:shareButton];
        
        self.navigationItem.rightBarButtonItem = shareItem;
    }
}

- (void)setUpNavigationBarBackBarButtonItemDontShowTitle {
    // 隐藏返回文字
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
}

#pragma mark - MBProgressHUD

- (void)showHUDWaitingWhileExecuting:(SEL)method {
    // The hud will dispable all input on the view (use the higest view possible in the view hierarchy)
    HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
    [self.navigationController.view addSubview:HUD];
    
    HUD.color = [UIColor colorWithRed:100 / 255.0 green:100 / 255.0 blue:100 / 255.0 alpha:0.9];
    
    
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    
    // Show the HUD while the provided method executes in a new thread
    [HUD showWhileExecuting:method onTarget:self withObject:nil animated:YES];
}

- (void)showHUDWithText:(NSString *)text delay:(NSTimeInterval)delay {
    if (!HUD.isHidden) {
        [HUD hide:NO];
    }
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    // Configure for text only and offset down
    HUD.mode = MBProgressHUDModeText;
    HUD.labelText = text;
    HUD.margin = 10.f;
    HUD.removeFromSuperViewOnHide = YES;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    [HUD hide:YES afterDelay:delay];
}

- (void)showHUDDone {
    [self showHUDDoneWithText:@"Done"];
}

- (void)showHUDDoneWithText:(NSString *)text {
    if (!HUD.isHidden) {
        [HUD hide:NO];
    }
    HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
    [self.navigationController.view addSubview:HUD];
    HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_icon_right"]];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.labelText = text;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    [HUD show:YES];
    [HUD hide:YES afterDelay:HUD_DELAY];
}

- (void)showHUDErrorWithText:(NSString *)text {
    if (!HUD.isHidden) {
        [HUD hide:NO];
    }
    HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
    [self.navigationController.view addSubview:HUD];
    HUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_icon_error"]];
    HUD.mode = MBProgressHUDModeCustomView;
    HUD.labelText = text;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    [HUD show:YES];
    [HUD hide:YES afterDelay:HUD_DELAY];
}

- (void)showHUDNetError {
    [self showHUDErrorWithText:BadNetwork];
}

- (void)showHUDServerError {
    [self showHUDErrorWithText:@"Server Error"];
}

- (void)showWithLabelText:(NSString *)showText executing:(SEL)method {
    if (!HUD.isHidden) {
        [HUD hide:NO];
    }
    HUD = [[MBProgressHUD alloc] initWithView:self.navigationController.view];
    [self.navigationController.view addSubview:HUD];
    HUD.labelText = showText;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    [HUD showWhileExecuting:method onTarget:self withObject:nil animated:YES];
}

- (void)showHUDWithText:(NSString *)text {
    [self hideHud];
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    // Configure for text only and offset down
    HUD.mode = MBProgressHUDModeIndeterminate;
    HUD.labelText = text;
    HUD.margin = 10.f;
    // Regiser for HUD callbacks so we can remove it from the window at the right time
    HUD.delegate = self;
    HUD.removeFromSuperViewOnHide = YES;
}

- (void)processServerErrorWithCode:(NSInteger)code andErrorMsg:(NSString *)msg {
    if (code == 500) {
        [self showHUDServerError];
    } else {
        [self showHUDDoneWithText:msg];
    }
}

- (void)hideHud {
    if (!HUD.isHidden) {
        [HUD hide:NO];
    }
}

#pragma mark - MBProgressHUDDelegate

- (void)hudWasHidden:(MBProgressHUD *)hud {
    if (self.hudWasHidden) {
        self.hudWasHidden();
    }
}


@end
