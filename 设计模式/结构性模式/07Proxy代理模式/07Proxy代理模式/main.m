//
//  main.m
//  07Proxy代理模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TicketOutlets.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 代理模式为其他对象提供一种代理以控制对这个对象的访问。
     2. 使用场景： 想在访问一个类时做一些控制。
     3. 具体实现： 这里举一个实际的例子，就是火车票代售点，具体实现Demo请点击这里查看
     4.优点： 1、职责清晰。 2、高扩展性。
     5.缺点： 增加了系统的复杂度
     6.注意事项: 1、和适配器模式的区别：适配器模式主要改变所考虑对象的接口，而代理模式不能改变所代理类的接口。 2、和装饰器模式的区别：装饰器模式为了增强功能，而代理模式是为了加以控制
     */
    
    TicketOutlets *ticketOutlets = [[TicketOutlets alloc] init];
    [ticketOutlets sell];
    
    return 0;
}
