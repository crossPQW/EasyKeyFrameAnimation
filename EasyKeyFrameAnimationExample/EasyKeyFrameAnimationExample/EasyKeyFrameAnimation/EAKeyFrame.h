//
//  EAKeyFrame.h
//  EasyKeyFrameAnimationExample
//
//  Created by 黄少华 on 2017/9/5.
//  Copyright © 2017年 黄少华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EAKeyFrame : NSObject


@property (nonatomic, assign) CGRect frame;
@property (nonatomic, assign) CGRect bounds;
@property (nonatomic, strong, nullable) NSNumber *alpha;
@property (nonatomic, strong, nullable) NSNumber *opacity;
@property (nonatomic, strong, nullable) UIColor *backgroundColor;
@property (nonatomic, strong, nullable) NSNumber *cornerRadius;


//从上一帧到当前帧持续时间
@property (nonatomic, assign, nonnull) NSNumber *duration;


@property (nonatomic, assign, readonly) double startTime;
@property (nonatomic, assign, readonly) double relativeDuration;
@end
