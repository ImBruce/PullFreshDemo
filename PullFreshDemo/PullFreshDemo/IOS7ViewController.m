//
//  IOS7ViewController.m
//
//  Created by guobingwei on 15-4-12.
//  Copyright (c) 2015年 guobingwei. All rights reserved.
//

#import "IOS7ViewController.h"

@interface IOS7ViewController ()

@end

@implementation IOS7ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary * dict = [NSDictionary dictionaryWithObject:[UIColor blackColor] forKey:UITextAttributeTextColor];
    self.navigationController.navigationBar.titleTextAttributes = dict;
    
    if (NSFoundationVersionNumber >= NSFoundationVersionNumber_iOS_7_0) {
        [self setNeedsStatusBarAppearanceUpdate];
    }
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;//UIRectEdgeAll
        //self.navigationController.navigationBar.translucent = NO;
    }
}

- (void)backButtonAction
{
    
}

-(BOOL)shouldAurorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

-(BOOL)shouldAutorotate {
    return YES;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
