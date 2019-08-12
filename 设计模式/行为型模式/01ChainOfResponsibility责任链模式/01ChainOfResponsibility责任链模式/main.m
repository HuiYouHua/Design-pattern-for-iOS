//
//  main.m
//  01ChainOfResponsibility责任链模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CEO.h"
#import "CTO.h"
#import "PM.h"

int main(int argc, const char * argv[]) {
    
    
    /**
     1.定义: 责任链模式（Chain of Responsibility Pattern）为请求创建了一个接收者对象的链。使多个对象都有机会处理请求，从而避免了请求的发送者和接受者之前的耦合关系。将这些对象连成一条链，并沿着这条链传递该请求，知道有对象处理它为止。
     2. 使用场景： 有多个对象可以处理同一个请求，具体哪个对象处理该请求由运行时确定。
     3. 具体实现： 这里举了一个实际中公司请假批假的例子，具体请点击这里查看
     4.优点： 1.低耦合：将请求和处理分开，请求者可以不用知道是谁处理的。2.新增和修改新的处理类比较容易
     5.缺点： 每个请求都是从链头遍历到链尾，如果链比较长会产生一定的性能问题，调试起来也比较麻烦。
     6.注意事项: 避免超长链的情况出现
     */
    
    // 类似于iOS中的事件响应者链
    CEO *ceo = [[CEO alloc] init];
    CTO *cto = [[CTO alloc] init];
    PM *pm = [[PM alloc] init];
    
    pm.handleMan = cto;
    cto.handleMan = ceo;
    
    NSArray *days = @[@2, @4, @6, @10, @20];
    for (NSString *dayStr in days) {
        [pm handleVacationDays:[dayStr integerValue]];
        NSLog(@"-----------");
    }
    return 0;
}
