//
//  ZHGodViewController.m
//  GodExtension
//
//  Created by 赵辉 on 04/25/2017.
//  Copyright (c) 2017 赵辉. All rights reserved.
//

#import "ZHGodViewController.h"
#import "UIView+ZG_AddLine.h"

@interface ZHGodViewController ()

@end

@implementation ZHGodViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view zg_addLineIsUp:NO Color:[UIColor redColor] LeftMargin:0 RightMargin:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
