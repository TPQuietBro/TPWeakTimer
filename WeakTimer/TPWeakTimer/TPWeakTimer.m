//
//  TPWeakTimer.m
//  WeakTimer
//
//  Created by tangpeng on 2017/7/26.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "TPWeakTimer.h"

@interface TPWeakTimer()
/**
 *  timer
 */
@property (nonatomic, strong) NSTimer *timer;
/**
 */
@property (nonatomic, copy) void(^userInfoBlock)(id obj);

@end

@implementation TPWeakTimer

- (void)tp_timerWithTimeInterval:(NSTimeInterval)time userInfo:(NSDictionary *)userInfo repeat:(BOOL)repeat userInfoBlock:(void (^)(id))userInfoBlock{
    self.userInfoBlock = userInfoBlock;
    self.timer = [NSTimer timerWithTimeInterval:time target:self selector:@selector(doSomeThing:) userInfo:userInfo repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)doSomeThing:(NSTimer *)timer{
    self.userInfoBlock ? self.userInfoBlock(timer.userInfo) : nil;
}

- (void)fireTimer{
    [self.timer invalidate];
    self.timer = nil;
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end
