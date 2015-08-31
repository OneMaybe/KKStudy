//
//  KKImageView.m
//  MyOne
//
//  Created by bcmac3 on 15/8/31.
//  Copyright (c) 2015年 KellenYang. All rights reserved.
//

#import "KKImageView.h"
#import "CircularLoaderView.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface KKImageView ()

@property (strong, nonatomic) CircularLoaderView *progressIndicatorView;

@end

@implementation KKImageView

- (instancetype)init {
    self = [super init];
    
    if (self) {
        self.progressIndicatorView = [[CircularLoaderView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.progressIndicatorView];
    }
    
    return self;
}

- (void)configImageViewWithUrl:(NSURL *)url animated:(BOOL)animated {
    //	NSLog(@"%@, animated = %@", NSStringFromSelector(_cmd), animated ? @"YES" : @"NO");
    if (animated) {
        self.progressIndicatorView.frame = self.bounds;
        [self.progressIndicatorView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
        
        [self sd_setImageWithURL:url placeholderImage:nil options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
            self.progressIndicatorView.progress = @(receivedSize).floatValue / @(expectedSize).floatValue;
        } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            [self.progressIndicatorView reveal];
        }];
    } else {
        self.progressIndicatorView.frame = CGRectZero;
        [self sd_setImageWithURL:url];
    }
}

@end
