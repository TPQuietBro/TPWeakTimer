//
//  TPWeakTimer.h
//  WeakTimer
//
//  Created by tangpeng on 2017/7/26.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TPWeakTimer : NSObject

- (void)tp_timerWithTimeInterval:(NSTimeInterval)time userInfo:(NSDictionary *)userInfo repeat:(BOOL)repeat userInfoBlock:(void(^)(id obj))userInfoBlock;

- (void)tp_scheduledTimerWithTimeInterval:(NSTimeInterval)time userInfo:(NSDictionary *)userInfo repeat:(BOOL)repeat userInfoBlock:(void(^)(id obj))userInfoBlock;

- (void)fireTimer;


@end
