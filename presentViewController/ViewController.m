//
//  ViewController.m
//  presentViewController
//
//  Created by 聂晓昀 on 2017/9/10.
//  Copyright © 2017年 NXY. All rights reserved.
//

#import "ViewController.h"
#import "ControlPresentViewController.h"
#import "ShowPresentViewController.h"
#import "PresentShowDelegate.h"
@interface ViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ShowPresentViewController *showPrensentVC = [[ShowPresentViewController alloc] init];
    showPrensentVC.transitioningDelegate = self;
//    设置弹出的模式为自定义
    showPrensentVC.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:showPrensentVC animated:YES completion:nil];
}
/**
 * 告诉系统化谁来负责进行转场,弹出控制器
 */
- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0){
    
    return [[ControlPresentViewController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
    
}
/**
 * 告诉系统谁来负责弹出的动画 (弹出控制器的时候调用)
 */
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    PresentShowDelegate *delegate = [[PresentShowDelegate alloc] init];
    delegate.isPresent = YES;
    return delegate;
}
/**
 *  告诉系统谁来负责销毁的动画 (销毁控制器的时候调用)
 */
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    PresentShowDelegate *delegate = [[PresentShowDelegate alloc] init];
    delegate.isPresent = NO;
    return delegate;
}
@end
