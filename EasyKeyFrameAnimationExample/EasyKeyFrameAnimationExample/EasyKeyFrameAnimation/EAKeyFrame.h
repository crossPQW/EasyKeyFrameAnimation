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
@property (nonatomic, strong, nullable) NSNumber *alpha;
//从上一帧到当前帧持续时间
@property (nonatomic, assign, nonnull) NSNumber *duration;

//以下两个属性取值范围在0~1之间，为每一帧占据总动画时间的比例，无需赋值，只需设置好 duration，manager 会自动计算比例。
@property (nonatomic, assign, readonly) double startTime;
@property (nonatomic, assign, readonly) double relativeDuration;

@end
