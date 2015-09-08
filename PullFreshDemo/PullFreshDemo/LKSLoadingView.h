//
//  LKSLoadingView.h
//  SVPullToRefreshDemo
//
//  Created by guobingwei on 15/9/7.
//  Copyright (c) 2015年 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKSLoadingView : UIView

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UIImageView *loadingImageView;
@property (nonatomic, assign, getter=isEndless) BOOL endless;
@property (nonatomic, assign) BOOL hidesWhenStopped;

- (id)initWithFrame:(CGRect)frame;

- (void)startAnimation;
- (void)stopAnimation;

@end
