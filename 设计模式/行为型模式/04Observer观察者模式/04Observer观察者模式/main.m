//
//  main.m
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "User.h"
#import "UserLoginManger.h"
#import "ObserverManager.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 定义对象间的一种一对多的依赖关系，当一个对象的状态发生改变时，所有依赖于它的对象都得到通知并被自动更新。
     2. 使用场景： 一个对象的状态发生改变，所有的依赖对象都将得到通知的时候。
     3. 具体实现： Objective-C中的通知以及KVO都是观察者模式的具体实现。这里举了一个找工作订阅的例子，具体请点击这里查看
     4.优点： 1.观察者和被观察者是抽象耦合的，扩展比较方便。2.建立一套触发机制。
     5.缺点： 1.如果一个被观察者对象有很多的直接和间接的观察者的话，将所有的观察者都通知到会花费很多时间。 2.如果在观察者和观察目标之间有循环依赖的话，观察目标会触发它们之间进行循环调用，可能导致系统崩溃。 3.观察者模式没有相应的机制让观察者知道所观察的目标对象是怎么发生变化的，而仅仅只是知道观察目标发生了变化。
     */
    User *zhangsan = [[User alloc] init];
    zhangsan.name = @"张三";
    User *lisi = [[User alloc] init];
    lisi.name = @"李四";
    
    UserLoginManger *manager1 = [[UserLoginManger alloc] initWithUser:zhangsan];
    UserLoginManger *manager2 = [[UserLoginManger alloc] initWithUser:lisi];
    
    ObserverManager *observer = [[ObserverManager alloc] init];
    [observer addObserver:manager1];
    [observer addObserver:manager2];
    [observer postObserver];
    
    [manager1 login];
    [manager2 logout];
    [manager1 login];
    [manager2 logout];
    
    NSLog(@"-------------");
    
    [observer removeObserver:manager1];
    [observer removeObserver:manager2];
    [manager1 login];
    [manager2 logout];
    [manager1 login];
    [manager2 logout];
    
    return 0;
}
