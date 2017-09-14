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
    keyFrame.borderColor = [UIColor redColor];
    keyFrame.borderWidth = @10;
    keyFrame.cornerRadius = @5;
    
    EAKeyFrame *keyFrame1 = [[EAKeyFrame alloc] init];
    keyFrame1.duration = @2;
    keyFrame1.alpha = @1;
    keyFrame1.frame = CGRectMake(100, 200, 100, 50);
    keyFrame1.backgroundColor = [UIColor greenColor];
    keyFrame1.borderColor = [UIColor blackColor];
    keyFrame1.borderWidth = @1;
    keyFrame1.cornerRadius = @10;
    
    [self.redView addAnimationsWithKeyFrames:@[keyFrame,keyFrame1] complete:^{
        NSLog(@"Animate has completed");
    }];
    
}

@end
