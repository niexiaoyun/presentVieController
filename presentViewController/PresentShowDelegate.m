//
//  PresentShowDelegate.m
//  presentViewController
//
//  Created by 聂晓昀 on 2017/9/10.
//  Copyright © 2017年 NXY. All rights reserved.
//

#import "PresentShowDelegate.h"

@implementation PresentShowDelegate
/**
 * 设置动画的执行时间
 */
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 2.0;
}

/**
 *  弹出控制器或者是销毁控制器的动画都会到这个方法
 */
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    if (self.isPresent) {//设置弹出动画
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        toView.transform = CGAffineTransformMakeTranslation(0, toView.bounds.size.height);
        [UIView animateWithDuration:2.0 animations:^{
            toView.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }else{//设置销毁动画
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        [UIView animateWithDuration:2.0 animations:^{
            fromView.transform = CGAffineTransformMakeTranslation(-fromView.bounds.size.width, 0);
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
    }
}
@end
