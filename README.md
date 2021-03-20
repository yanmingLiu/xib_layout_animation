# xib_layout_animation
XIB添加动画


 ![image](https://github.com/yanmingLiu/xib_layout_animation/blob/master/xibLayout/xibLayout/Untitled.gif)


```

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

```
