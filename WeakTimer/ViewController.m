//
//  ViewController.m
//  WeakTimer
//
//  Created by 魏信洋 on 2017/7/26.
//  Copyright © 2017年 com.allen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 *  timer
 */
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(doSomeThing:) userInfo:nil repeats:YES];
    //[[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)dealloc{
    //[self.timer invalidate];
    //self.timer = nil;
}

- (void)doSomeThing:(NSTimer *)timer{
    //NSLog(@"123");
}
@end
