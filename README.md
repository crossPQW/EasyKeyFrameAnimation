## EasyKeyFrameAnimation
 `EasyKeyFrameAnimation`是一个方便构造帧动画的工具，你可以以构建对象的方式构建每一个关键帧的动画，目前支持`frame,bounds,alpha,opacity,backgroundColor,borderColor,borderWidth,cornerRadius`这些属性，当然你也可以在此基础上扩展更多的属性。

## 引用
 把`EAKeyFrame + UIView+EAAnimate`类拖入，引入头文件即可。
## 示例
你可以直接创建多个`EAKeyFrame`对象，每个对象代表了每一帧需要执行动画的各种属性，其实`duration`属性为从上一帧到该帧的持续时间，其中第一帧默认时间为0。
Example：
 ```
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

 ```
 
 ## License

 [MIT license](LICENSE).
