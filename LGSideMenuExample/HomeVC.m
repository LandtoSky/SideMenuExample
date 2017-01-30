//
//  HomeVC.m
//  LGSideMenuExample
//
//  Created by LandToSky on 1/30/17.
//  Copyright © 2017 LandToSky. All rights reserved.
//

#import "HomeVC.h"
#import "UIViewController+LGSideMenuController.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showLeftView:(UIButton *)sender {
    [self.sideMenuController showLeftViewAnimated:YES completionHandler:nil];
}

- (IBAction)showRightView:(id)sender{
    [self.sideMenuController showRightViewAnimated:YES completionHandler:nil];
}


@end
