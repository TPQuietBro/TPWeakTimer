//
//  TempViewController.m
//  WeakTimer
//
//  Created by tp on 2017/7/26.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "TempViewController.h"
#import "TPWeakTimer.h"

@interface TempViewController ()
@property (nonatomic, strong) TPWeakTimer *timer;
@end

@implementation TempViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
//    [self.timer tp_timerWithTimeInterval:1 userInfo:nil repeat:YES userInfoBlock:^(id obj) {
//        NSLog(@"123");
//    }];
    
    [self.timer tp_scheduledTimerWithTimeInterval:1 userInfo:nil repeat:YES userInfoBlock:^(id obj) {
        NSLog(@"123");
    }];
    
}

- (void)dealloc{
    [self.timer fireTimer];

    NSLog(@"%s",__func__);
}

/*
 */
- (TPWeakTimer *)timer
{
    if (!_timer) {
        _timer = [[TPWeakTimer alloc] init];
    }
    return _timer;
}


@end
