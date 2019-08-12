//
//  main.m
//  02Bridge桥接模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RefreshMessageOption.h"
#import "LoadMessageOption.h"

#import "ChatMessageProvider.h"
#import "HistoryMessageProvider.h"
#import "RemoteMessageProvider.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 桥接模式就是将抽象部分和实现部分解耦，从而使得两者可以独立的变化。
     2. 使用场景： 重用性要求较高的不希望或不适用使用继承的场景。也就是说当继承N层，达到层级有点爆炸的时候可以考虑使用此模式。
     3. 具体实现： 这里举了一个App不同模块可以切换不同主题的例子，桥接模式主打的是组合优于继承，具体Demo点击查看，如果没有用桥接模式的话，可能就会出现MyRedModule，MyBlueModule这样的类
     4.优点： 此模式分离了应用的抽象部分与实现部分，有利于扩充。
     5.缺点： 桥接模式要求正确识别出系统中两个独立变化的维度，因此其使用范围具有一定的局限性。
     6.注意事项: 并不是一涉及继承就要考虑使用桥接模式，不然还要继承做什么？桥接模式的目的就是要对变化进行封装，尽可能的把变化的因素封装到最细最小的单元中，避免风险扩散。所以当发现类的继承有N层的时候，才需要去考虑使用该模式。
     */
    /**
     也就是两个独立功能模块可以互相调用
     比如:模块A调用A功能,也可以调用B功能
         模块B也可以调用A功能和B功能
     */
    
    ChatMessageProvider *chatProvider = [[ChatMessageProvider alloc] init];
    HistoryMessageProvider *historyProvider = [[HistoryMessageProvider alloc] init];
    RemoteMessageProvider *remoteProvider = [[RemoteMessageProvider alloc] init];
    
    MessageOption *refreshOption = [[RefreshMessageOption alloc] init];
    refreshOption.messageProvider = chatProvider;
    [refreshOption messageOption];
    
    refreshOption.messageProvider = historyProvider;
    [refreshOption messageOption];
    
    refreshOption.messageProvider = remoteProvider;
    [refreshOption messageOption];
    
    NSLog(@"----------");
    MessageOption *loadOption = [[LoadMessageOption alloc] init];
    loadOption.messageProvider = chatProvider;
    [loadOption messageOption];
    
    loadOption.messageProvider = historyProvider;
    [loadOption messageOption];
    
    loadOption.messageProvider = remoteProvider;
    [loadOption messageOption];
    
    /**
     桥梁模式所涉及的角色有：
        - 抽象化(Abstraction)角色：抽象化给出的定义，并保存一个对实现化对象的引用。这里抽象画角色就是MessageOption类,其对实现化对象的引用就是messageProvider,可以通过这个引用去调用实现的方法和属性
        - 修正抽象化(Refined Abstraction)角色：扩展抽象化角色，改变和修正父类对抽象化的定义。这里指的就是MessageOption的子类,可以根据不同的需要扩展功能
        - 实现化(Implementor)角色：这个角色给出实现化角色的接口，但不给出具体的实现。必须指出的是，这个接口不一定和抽象化角色的接口定义相同，实际上，这两个接口可以非常不一样。实现化角色应当只给出底层操作，而抽象化角色应当只给出基于底层操作的更高一层的操作。这里指的是MessageProvider类,他实现了MessageProvideProtocol协议,可以在该协议中定义各类操作
        - 具体实现化(Concrete Implementor)角色：这个角色给出实现化角色接口的具体实现。这里指的是MessageProvideProtocol类的子类,给出基于协议方法的具体实现
     
     
     这里demo案例写反了,实际上应该是MessageProvide类实现消息数据的增删改查
     这里的抽象化应该是各个控制器模块,比如聊天界面,历史界面,远程消息界面
     
     语法分析: 在聊天界面操作消息数据
     则聊天界面应该指得是抽象化,  操作数据是具体的实现化
     */
    
    /**
     桥接模式和适配模式的区别:
     相同点：
     桥接模式和适配器模式都是让两个接口配合的工作
     不同点：
     桥接模式：把实现和抽象都分离开了，可以让两者的接口可以不一样。主要的目的是把他们分离开了。桥接模式是先有桥在有2端的接口，这个就好像，我们控制空调的一些指令，他就想一个桥一样，把我们一些通过遥控器传递给给空调，让空调工作。
     适配器模式：适配器模式是，先有2端的东西以后，为了让2端的东西更好的相容，才有的适配器。就好像我们的国家电网，和我们平常使用的电器设备，他们是已经存在的2个接口，我们只是在中间做了一个转换。让他们配合着一起工作。
     */
    
    return 0;
}
