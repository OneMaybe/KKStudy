//
//  AboutViewController.m
//  MyOne
//
//  Created by HelloWorld on 7/27/15.
//  Copyright (c) 2015 melody. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation AboutViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	self.view.backgroundColor = [UIColor whiteColor];
	// 设置夜间模式背景色
	self.view.nightBackgroundColor = NightBGViewColor;
	
	[self setTitleView];
	[self setUpViews];
	
	[self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.wufazhuce.com/about?from=ONEApp"]]];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	self.webView.frame = self.view.bounds;
}

#pragma mark - Private

- (void)setTitleView {
	UILabel *titleLabel = [UILabel new];
	titleLabel.text = @"关于";
	titleLabel.textColor = TitleTextColor;
	titleLabel.nightTextColor = TitleTextColor;
	titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:17];
	[titleLabel sizeToFit];
	self.navigationItem.titleView = titleLabel;
}

- (void)setUpViews {
	self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    //UIWebView可以缩放HTML页面来适配其视口大小，从而达到整屏显示内容的效果，并且用户可以用捏合动作来放大或缩小页面来查看内容。
	self.webView.scalesPageToFit = NO;
	self.webView.multipleTouchEnabled = NO;
    //可以达到同一界面上多个控件接受事件时的排他性，从而避免一些问题。
	self.webView.exclusiveTouch = NO;
	self.webView.backgroundColor = [UIColor colorWithRed:249 / 255.0 green:249 / 255.0 blue:249 / 255.0 alpha:1];;
	self.webView.scrollView.backgroundColor = self.webView.backgroundColor;
    //控件滚动到顶部
	self.webView.scrollView.scrollsToTop = YES;
	[self.view addSubview:self.webView];
}

@end
