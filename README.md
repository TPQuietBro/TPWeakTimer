# TPWeakTimer
## 为什么有weakTimer?
>>因为直接在控制器中使用定时器方法[timerWithTimeInterval: target: selector: userInfo: repeats:],会出现循环引用的情况.在控制器的delloc方法中销毁定时器有可能是不成功的,因为控制器被循环引用,根本不可能被释放,所以走不到这个方法来.循环引用的过程:viewController->timer->target:viewController.
>>解决方案:viewController->weakTimer->timer.
### 使用方法如下
1. 导入头文件->#import "TPWeakTimer.h"
2. 使用代码:
```
#import "TempViewController.h"
#import "TPWeakTimer.h"

@interface TempViewController ()
//懒加载初始化
@property (nonatomic, strong) TPWeakTimer *timer;
@end

@implementation TempViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    //调用方法
    [self.timer tp_timerWithTimeInterval:1 userInfo:nil repeat:YES userInfoBlock:^(id obj) {
    //这里写你要做的定时器操作
        NSLog(@"123");
    }];
}

- (void)dealloc{
    //销毁定时器
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
```
