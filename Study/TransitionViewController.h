//
//  TransitionViewController.h
//  Study
//
//  Created by 史练练 on 15/9/7.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TransitionViewController;

@protocol TransitionViewControllerDelegate <NSObject>

-(void)didPresentedVC:(TransitionViewController *)viewcontroller;

@end

@interface TransitionViewController : UIViewController

@property (nonatomic, weak) id<TransitionViewControllerDelegate>delegate;

@end
