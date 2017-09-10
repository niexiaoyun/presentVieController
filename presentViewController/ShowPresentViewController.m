//
//  ShowPresentViewController.m
//  presentViewController
//
//  Created by 聂晓昀 on 2017/9/10.
//  Copyright © 2017年 NXY. All rights reserved.
//

#import "ShowPresentViewController.h"

@interface ShowPresentViewController ()

@end

@implementation ShowPresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
