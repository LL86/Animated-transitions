//
//  TransitionViewController.m
//  Study
//
//  Created by 史练练 on 15/9/7.
//  Copyright (c) 2015年 LL. All rights reserved.
//

#import "TransitionViewController.h"

@interface TransitionViewController ()



@end

@implementation TransitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)dissmissClick:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(didPresentedVC:)]) {
        [self.delegate didPresentedVC:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
