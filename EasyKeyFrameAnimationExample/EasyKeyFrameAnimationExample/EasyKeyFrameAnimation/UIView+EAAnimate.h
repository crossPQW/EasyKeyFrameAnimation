//
//  UIView+EAAnimate.h
//  EasyKeyFrameAnimationExample
//
//  Created by 黄少华 on 2017/9/5.
//  Copyright © 2017年 黄少华. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EAKeyFrame.h"

@interface UIView (EAAnimate)

- (void)addAnimationsWithKeyFrames:(NSArray <EAKeyFrame *>*)keyFrames complete:(void(^)(void))complete;

@end
