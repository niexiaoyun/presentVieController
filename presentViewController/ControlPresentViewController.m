//
//  ControlPresentViewController.m
//  presentViewController
//
//  Created by 聂晓昀 on 2017/9/10.
//  Copyright © 2017年 NXY. All rights reserved.
//

#import "ControlPresentViewController.h"

@implementation ControlPresentViewController
/**
 *  用来布局子控件的frame
 */
-(void)containerViewWillLayoutSubviews
{
//    设置被弹出控制器的尺寸
    self.presentedView.frame = self.containerView.bounds;
}

-(void)presentationTransitionWillBegin
{
//    如果通过动画实现自定义转场, 必须自己添加对应的视图
    [self.containerView addSubview:self.presentedView];
}

-(void)dismissalTransitionDidEnd:(BOOL)completed
{
//   控制器销毁的时候, 要移除对应的视图
    [self.presentedView removeFromSuperview];
}


@end
