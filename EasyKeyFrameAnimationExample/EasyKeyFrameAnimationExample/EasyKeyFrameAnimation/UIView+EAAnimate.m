//
//  UIView+EAAnimate.m
//  EasyKeyFrameAnimationExample
//
//  Created by 黄少华 on 2017/9/5.
//  Copyright © 2017年 黄少华. All rights reserved.
//

#import "UIView+EAAnimate.h"

@implementation UIView (EAAnimate)

- (void)addAnimationsWithKeyFrames:(NSArray <EAKeyFrame *>*)keyFrames complete:(void(^)(void))complete {
    
    if (keyFrames.count == 0) {
        return;
    }
    
    //第一帧默认时间为0
    keyFrames.firstObject.duration = @0;
    
    //计算动画所需总时长
    NSTimeInterval duration = 0;
    for (EAKeyFrame *keyFrame in keyFrames) {
        duration += keyFrame.duration.doubleValue;
    }
    
    //计算每一帧站总动画时长的比例
    __block double startTime = 0;
    [keyFrames enumerateObjectsUsingBlock:^(EAKeyFrame * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj setValue:[NSNumber numberWithDouble:startTime] forKey:@"startTime"];
        [obj setValue:[NSNumber numberWithDouble:(obj.startTime + obj.duration.doubleValue/duration)] forKey:@"relativeDuration"];
        
        startTime = obj.relativeDuration;
    }];
    
    [UIView animateKeyframesWithDuration:duration delay:0 options:UIViewKeyframeAnimationOptionCalculationModeLinear | UIViewAnimationOptionCurveLinear animations:^{
        for (EAKeyFrame *keyFrame in keyFrames) {
            [UIView addKeyframeWithRelativeStartTime:keyFrame.startTime relativeDuration:keyFrame.relativeDuration animations:^{
                
                if (!CGRectIsEmpty(keyFrame.frame)) {
                    self.frame = keyFrame.frame;
                }
                
                if (keyFrame.alpha) {
                    self.alpha = keyFrame.alpha.doubleValue;
                }
                
            }];
        }
    } completion:^(BOOL finished) {
        if (complete) {
            complete();
        }
    }];
}
@end
