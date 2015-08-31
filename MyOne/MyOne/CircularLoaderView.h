//
//  CircularLoaderView.h
//  MyOne
//
//  Created by bcmac3 on 15/8/31.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import <UIKit/UIKit.h>
//圆形加载视图
@interface CircularLoaderView : UIView

@property (nonatomic, assign) CGFloat progress;

- (void)reveal;

@end
