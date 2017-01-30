//
//  SidePanelVC.m
//  LGSideMenuExample
//
//  Created by LandToSky on 1/30/17.
//  Copyright © 2017 LandToSky. All rights reserved.
//

#import "SidePanelVC.h"


#import "HomeVC.h"
#import "LeftPanelVC.h"
#import "RightPanelVC.h"

@interface SidePanelVC ()

@end

@implementation SidePanelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self initData];
}

- (void)initUI
{
    HomeVC *homeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    UINavigationController *homeNavigation = [[UINavigationController alloc] initWithRootViewController:homeVC];
    [homeNavigation setNavigationBarHidden:YES];
    LeftPanelVC *leftPanelVC = [self.storyboard instantiateViewControllerWithIdentifier:@"LeftPanelVC"];
    RightPanelVC *rightPanelVC = [self.storyboard instantiateViewControllerWithIdentifier:@"RightPanelVC"];
    
    self.rootViewController = homeNavigation;
    self.leftViewController = leftPanelVC;
    self.rightViewController = rightPanelVC;
    
    // Left Panel Setting
    self.leftViewWidth = 328.0f;
    self.leftViewBackgroundImage = [UIImage imageNamed:@"back-image"];
    self.leftViewStatusBarHidden = YES;
    self.leftViewBackgroundImageInitialScale = 1.0;
    self.leftViewInititialOffsetX = 0.0;
    self.leftViewInititialScale = 1.0;
    self.leftViewCoverBlurEffect = nil;
    
    self.rootViewCoverColorForLeftView = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    self.rootViewScaleForLeftView = 450/667.0f;
    
    
    // Right Panel Setting
    self.rightViewWidth = 200.0f;
    self.rightViewBackgroundImage = [UIImage imageNamed:@"back1-image"];
    self.rootViewCoverColorForRightView = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
    self.rightViewStatusBarHidden = YES;
    
    self.leftViewPresentationStyle = LGSideMenuPresentationStyleScaleFromBig;
    self.rightViewPresentationStyle = LGSideMenuPresentationStyleScaleFromBig;
    

    
}

- (void)initData
{
    
}

@end
