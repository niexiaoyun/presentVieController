//
//  PresentShowDelegate.h
//  presentViewController
//
//  Created by 聂晓昀 on 2017/9/10.
//  Copyright © 2017年 NXY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface PresentShowDelegate : NSObject<UIViewControllerAnimatedTransitioning>
/**
 * 用来记录是弹出还是销毁控制器
 */
@property (nonatomic,assign) BOOL isPresent;
@end
