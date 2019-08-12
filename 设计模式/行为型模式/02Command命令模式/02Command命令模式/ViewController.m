//
//  ViewController.m
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ViewController.h"
#import "EventHandleManager.h"

#import "ChangeNum.h"
#import "ReduceNum.h"
#import "AddNum.h"

#import "ChangeNumManger.h"
@interface ViewController () {
    ChangeNum *_changeNum;
    EventHandleManager *_handleManage;
    ChangeNumManger *_changeNumManger;
}
@property (weak, nonatomic) IBOutlet UILabel *numLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    /**
     1.定义: 命令模式将请求封装成对象，从而可用不同的请求对客户进行参数化，对请求排队或记录请求日志，以及支持可撤销和恢复的操作。
     2. 使用场景： 在某些场合，比如要对行为进行"记录、撤销/重做、事务"等处理的时候。
     3. 具体实现： YTKNetwork就是用的命令模式。
     4.优点： 1.类间解耦：调用者与接收者之间没有任何依赖关系。2.扩展性良好：新的命令可以很容易添加到系统中去。
     5.缺点： 使用命令模式可能会导致系统有过多的具体命令类。
     

     */
    
    _handleManage = [[EventHandleManager alloc] initWithLable:self.numLabel];
    _changeNumManger = [[ChangeNumManger alloc] init];
}

- (IBAction)reduceClick:(id)sender {
    // 以前的处理方式
    /**
     其实到这里，_changeNum对象相当于ViewController的代理，代理完成控制属于Viewcontroller管理和控制的label文字改变。只不过这个代理不是那么抽象而且也不是遵循了某个协议的。是具体而直接完成逻辑业务的。这个简单的模式，在项目或者不考虑拓展性或者 某个模块功能固定了，可以使用这个模式。
     
     但是有的业务需求会需要记录存储和取出执行任务的或者信息传递命令的状态，像这里如果要添加撤销操作，就需要记录之前的操作，然后根据之前的操作回 退反过来操作，这时候，命令模式就能比较方便的实现这个逻辑了。命令模式其实就是将发送的命令信息抽象成一个类，然后具体信息就创建具体的类，并通过回调 者添加并执行命令对象的执行命令涉及到的任务方法，同时存储记录这个命令，那么这时候因为每次操作都能存储下来，所以再来设计撤销操作就很容易了。这就是 命令模式的一个优点。
     */
//    [_handleManage reduceLabel];
    
    _changeNum = [[ReduceNum alloc] initWithEventHandle:_handleManage];
    [_changeNumManger reduceLabel:_changeNum];
    
    
    /**
    ChangeNumManger类就是用来记录每一个操作,并进行封装
     */
}

- (IBAction)addClick:(id)sender {
    
    _changeNum = [[AddNum alloc] initWithEventHandle:_handleManage];
    [_changeNumManger addLabel:_changeNum];
}
- (IBAction)rollbackClick:(id)sender {
    [_changeNumManger rooBackLabel];
}

@end
