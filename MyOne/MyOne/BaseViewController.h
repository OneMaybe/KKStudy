//
//  BaseViewController.h
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)setUpNavigationBarShowRightBarButtonItem:(BOOL)show;

- (void)setUpNavigationBarBackBarButtonItemDontShowTitle;

- (void)showHUDWaitingWhileExecuting:(SEL)method;

- (void)showHUDWithText:(NSString *)text delay:(NSTimeInterval)delay;

- (void)showHUDDone;

- (void)showHUDDoneWithText:(NSString *)text;

- (void)showHUDErrorWithText:(NSString *)text;

- (void)showHUDNetError;

- (void)showHUDServerError;

- (void)showWithLabelText:(NSString *)showText executing:(SEL)method;

- (void)showHUDWithText:(NSString *)text;

/**
 *  隐藏当前显示的提示框
 */
- (void)hideHud;

@property (nonatomic, copy) void (^hudWasHidden)(void);

@end
