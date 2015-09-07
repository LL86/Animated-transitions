//
//  ViewController.m
//  Study
//
//  Created by 史练练 on 15/8/27.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "ViewController.h"
#import "TransitionViewController.h"
#import "RotationPresentAnimation.h"

@interface ViewController ()<UIViewControllerTransitioningDelegate,TransitionViewControllerDelegate>

@property(nonatomic,strong)RotationPresentAnimation *presentAnimation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.presentAnimation = [[RotationPresentAnimation alloc]init];
    }
    return self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    TransitionViewController *pvc = segue.destinationViewController;
    pvc.delegate = self;

     pvc.transitioningDelegate = self;
    
}

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{

    return self.presentAnimation;

}

- (void)didPresentedVC:(TransitionViewController *)viewcontroller{

      [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
