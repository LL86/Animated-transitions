//
//  RotationPresentAnimation.m
//  Study
//
//  Created by 史练练 on 15/9/7.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "RotationPresentAnimation.h"

@implementation RotationPresentAnimation


- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
    return 1.0f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    //1
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];

    //2
    CGRect finalRect = [transitionContext finalFrameForViewController:toVC];
    toVC.view.frame = CGRectOffset(finalRect, 0, [[UIScreen mainScreen]bounds].size.height);

    //3
    [[transitionContext containerView]addSubview:toVC.view];

    //4
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.0 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        toVC.view.frame = finalRect;
    } completion:^(BOOL finished) {
        //5
        [transitionContext completeTransition:YES];
    }];
}

/**
 *  1、我们需要得到参与切换的两个ViewController的信息，使用context的方法拿到它们的参照；
 2、对于要呈现的VC，我们希望它从屏幕下方出现，因此将初始位置设置到屏幕下边缘；
 3、将view添加到containerView中；
 4、开始动画。这里的动画时间长度和切换时间长度一致。usingSpringWithDamping的UIView动画API是iOS7新加入的，描述了一个模拟弹簧动作的动画曲线；
 5、在动画结束后我们必须向context报告VC切换完成，是否成功。系统在接收到这个消息后，将对VC状态进行维护。
 

 */
@end
