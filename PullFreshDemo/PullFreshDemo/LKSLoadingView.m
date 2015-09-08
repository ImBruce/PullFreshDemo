//
//  LKSLoadingView.m
//  SVPullToRefreshDemo
//
//  Created by guobingwei on 15/9/7.
//  Copyright (c) 2015年 Home. All rights reserved.
//

#import "LKSLoadingView.h"

NSString *viewRotationKey = @"rotationAnimation";

@implementation LKSLoadingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.userInteractionEnabled = YES;
        [self setupLoading];
    }
    return self;
}

- (id)init
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setupLoading
{
    self.loadingImageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.frame.size.width - 24.0)/2, (self.frame.size.height - 24.0)/2, 24.0, 24.0)];
    self.loadingImageView.backgroundColor = [UIColor clearColor];
    self.loadingImageView.image = [UIImage imageNamed:@"mh"];
    [self addSubview:self.loadingImageView];
}

- (void)startAnimation
{
    [self setHidesWhenStopped:NO];
    
    CABasicAnimation * transformRoate = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    transformRoate.byValue = [NSNumber numberWithDouble:(M_PI*2)];
    transformRoate.duration = 0.8;
    transformRoate.repeatCount = self.isEndless == YES ? MAXFLOAT : 2;
    [self.loadingImageView.layer addAnimation:transformRoate forKey:viewRotationKey];
}

- (void)stopAnimation
{
    [self setHidesWhenStopped:YES];

    [UIView animateWithDuration:0.3f animations:^{
        self.loadingImageView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.loadingImageView.layer removeAllAnimations];
        self.loadingImageView.alpha = 1.0;
    }];
}

- (void)setHidesWhenStopped:(BOOL)hidesWhenStopped
{
    if (hidesWhenStopped) {
        [self setHidden:YES];
    } else {
        [self setHidden:NO];
    }
}

@end
