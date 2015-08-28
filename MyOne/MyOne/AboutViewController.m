//
//  AboutViewController.m
//  MyOne
//
//  Created by bcmac3 on 15/8/28.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@property (strong, nonatomic) UIWebView *webView;

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.nightBackgroundColor = NightBGViewColor;
    [self setTitleView];
    [self setUpViews];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.wufazhuce.com/about?from=ONEApp"]]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.webView.frame = self.view.bounds;
}

- (void)setTitleView {
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"关于";
    titleLabel.textColor = TitleTextColor;
    titleLabel.nightTextColor = TitleTextColor;
    titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:18];
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}

- (void)setUpViews {
    self.webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    self.webView.scalesPageToFit = NO;
    self.webView.multipleTouchEnabled = NO;
    self.webView.exclusiveTouch = NO;
    self.webView.backgroundColor = [UIColor colorWithRed:249 / 255.0 green:249 / 255.0 blue:249 / 255.0 alpha:1];
    self.webView.scrollView.scrollsToTop = YES;
    [self.view addSubview:self.webView];
}

@end
