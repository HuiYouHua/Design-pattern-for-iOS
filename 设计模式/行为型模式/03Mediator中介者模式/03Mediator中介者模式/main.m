//
//  main.m
//  03Mediator中介者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "User.h"
#import "ChatRoom.h"

int main(int argc, char * argv[]) {
    
    /**
     1.定义: 中介者模式就是用一个中介对象来封装一系列的对象交互，中介者使各对象不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
     2. 使用场景： 多个类相互依赖，形成了网状结构的时候可以考虑使用中介者模式。
     3. 具体实现： 这里举了一个聊天室的例子，具体请点击这里查看
     4.优点： 1.解耦：通过中介者模式，我们可以将复杂关系的网状结构变成结构简单的以中介者为核心的星形结构，每个对象不再和它与之关联的对象直接发生相互作用，而是通过中介者对象来另一个对象发生相互作用。2.降低了类的复杂度，将一对多转化成了一对一。
     5.缺点：中介者模式在某些情况会膨胀得很大，而且逻辑复杂，中介类越多越复杂，越难以维护。
     6.注意事项: 类之间的依赖关系是必然存在的，所以不一定有多个依赖关系的时候就考虑使用中介者模式。中介者模式适用于多个对象之间的紧密耦合的情况，紧密耦合的定义标准是：在类图中出现了蜘蛛网状结构，这种情况就要考虑使用中介者模式，中介者模式可以把蜘蛛网梳理成星型结构，使原本复杂混乱的关系变得清晰简单。
     */
    
    /**
     类似于组件化中VC跳转,
     写个中间件,在中间件中获取相应的VC,然后进行跳转操作
     
     将多对多的情况变成 一对多 或者一对一的状态
     */
    ChatRoom *room = [[ChatRoom alloc] init];
    User *wuJun = [[User alloc] initWithName:@"吴军" room:room];
    User *me = [[User alloc] initWithName:@"SuperMario" room:room];
    [wuJun sendMessage:@"来自硅谷的第一封信"];
    [me sendMessage:@"谢谢，不做伪工作者"];
    
    @autoreleasepool {
        return 0;
    }
}
