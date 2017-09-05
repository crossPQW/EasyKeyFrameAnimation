//
//  ViewController.m
//  EasyKeyFrameAnimationExample
//
//  Created by 黄少华 on 2017/9/5.
//  Copyright © 2017年 黄少华. All rights reserved.
//

#import "ViewController.h"
#import "UIView+EAAnimate.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    EAKeyFrame *keyFrame = [[EAKeyFrame alloc] init];
    keyFrame.duration = @5;
//    keyFrame.alpha = 1;
    keyFrame.frame = self.redView.frame;
    
    EAKeyFrame *keyFrame1 = [[EAKeyFrame alloc] init];
    keyFrame1.duration = @2;
    keyFrame1.alpha = @1;
    keyFrame1.frame = CGRectMake(100, 200, 100, 50);
    
    [self.redView addAnimationsWithKeyFrames:@[keyFrame,keyFrame1] complete:^{
        self.redView.backgroundColor = [UIColor grayColor];
    }];
}

@end
