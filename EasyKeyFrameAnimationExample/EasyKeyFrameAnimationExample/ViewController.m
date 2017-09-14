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
    keyFrame.duration = @0;
    keyFrame.alpha = @1;
    keyFrame.frame = self.redView.frame;
    keyFrame.backgroundColor = [UIColor blueColor];
    keyFrame.cornerRadius = @5;
    
    EAKeyFrame *keyFrame1 = [[EAKeyFrame alloc] init];
    keyFrame1.duration = @2;
    keyFrame1.alpha = @1;
    keyFrame1.frame = CGRectMake(100, 200, 100, 50);
    keyFrame1.backgroundColor = [UIColor greenColor];
    keyFrame1.cornerRadius = @10;
    
    EAKeyFrame *keyFrame2 = [[EAKeyFrame alloc] init];
    keyFrame2.duration = @3;
    keyFrame2.alpha = @0.5;
    keyFrame2.frame = CGRectMake(200, 200, 100, 100);
    keyFrame2.backgroundColor = [UIColor grayColor];
    keyFrame2.cornerRadius = @50;
    
    [self.redView addAnimationsWithKeyFrames:@[keyFrame,keyFrame1,keyFrame2] complete:^{
        NSLog(@"Animate has completed");
    }];
    
}

@end
