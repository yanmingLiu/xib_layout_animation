//
//  ViewController.m
//  xibLayout
//
//  Created by 刘彦铭 on 2017/4/2.
//  Copyright © 2017年 刘彦铭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueRightLayout;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewSpace;
@property (weak, nonatomic) IBOutlet UISwitch *sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateLayout];
}

- (void)updateLayout {
    if (_sender.isOn) {
        _viewSpace.constant = 8;
        _blueRightLayout.priority = UILayoutPriorityDefaultHigh + 1;
    }else {
        _viewSpace.constant = self.view.frame.size.width;
        _blueRightLayout.priority = UILayoutPriorityDefaultHigh - 1;
    }
}

- (IBAction)switchLayout:(UISwitch *)sender {
    
    
    [self.view layoutIfNeeded];
    
    [UIView animateWithDuration:1 animations:^{
        
        [self updateLayout];
        
        [self.view layoutIfNeeded];
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
