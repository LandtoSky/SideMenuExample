//
//  LeftPanelVC.m
//  LGSideMenuExample
//
//  Created by LandToSky on 1/30/17.
//  Copyright © 2017 LandToSky. All rights reserved.
//

#import "LeftPanelVC.h"
#import "UIViewController+LGSideMenuController.h"
@interface LeftPanelVC ()

@end

@implementation LeftPanelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onHome:(id)sender
{
    self.sideMenuController.rootViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    [self.sideMenuController hideLeftViewAnimated:sender];
}

- (IBAction)onCustomVC:(id)sender
{
    self.sideMenuController.rootViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomVC"];
    [self.sideMenuController hideLeftViewAnimated:sender];
}
@end
