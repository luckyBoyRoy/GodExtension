//
//  ZGViewController.m
//  GodExtension
//
//  Created by luckyBoyRoy on 04/25/2017.
//  Copyright (c) 2017 luckyBoyRoy. All rights reserved.
//

#import "ZGViewController.h"
#import "UIView+ZG_AddLine.h"

@interface ZGViewController ()

@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ZGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addTopLine:(id)sender {
    [self.testView zg_AddLineIsUp:YES LeftMargin:0 RightMargin:0];
}

- (IBAction)addBottomLine:(id)sender {
    [self.testView zg_AddLineIsUp:NO LeftMargin:0 RightMargin:0];
}
- (IBAction)removeTopLine:(id)sender {
    [self.testView zg_removeLineIsUp:YES];
}
- (IBAction)removeBottomLine:(id)sender {
    [self.testView zg_removeLineIsUp:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
