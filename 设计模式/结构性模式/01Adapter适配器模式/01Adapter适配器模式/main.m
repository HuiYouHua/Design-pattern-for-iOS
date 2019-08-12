//
//  main.m
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AVPlayerManager.h"
#import "IJKPlayerManager.h"
#import "IJKPlayerAdapter.h"

#import "IJKPlayerManager1.h"
#import "IJKPlayerAdapter1.h"


int main(int argc, const char * argv[]) {

    /**
     1.定义: 适配器模式将一个类的接口变成调用者所期待的另一种接口，从而使原本因接口不匹配而无法在一起工作的两个类能够在一起工作。(举一个现实中的实例：比如转接头)。
     2. 使用场景： 扩展应用或者组件时，而被集成进来的又不符合现在的接口，这个时候可以考虑使用适配器模式。
     4.优点： 通过使用适配器让不兼容的接口变成了兼容，让调用者从实现类的接口解耦。在不修改原有代码的基础上增加新的适配器类，所以灵活性和扩展性比较好，哪天不想用了，就一起卸载掉。
     5.缺点： 只有集成具有类似功能的组件时，适配器模式才具有使用价值。具有相似功能具体指：API不一样，但是功能是相似的。
     6.注意事项: 适配器模式一般不是为了解决还处在于开发阶段的问题，一般都是解决正在服役项目的扩展问题。

     */
    
    /**
     适配器模式分为类适配器与对象适配器两种:
     类适配器: 通过继承来适配两个接口
     对象适配器: 不继承被适配者, 他们是一个关联关系,相当于引用了这个类
     */
    
    /**
     案例模拟:
     视图有一播放器AVPlayer,现要换成IJKPlayer
     在不修改原有业务逻辑的情况下,更换播放视图
     */
    id<AVPlayerProtocol> _player;
    
    _player = [[AVPlayerManager alloc] init];
    [_player av_play];
    [_player av_resume];
    [_player av_stop];
    NSLog(@"--------------------");
    
    // 对象适配器
    IJKPlayerManager *ijkplayer = [[IJKPlayerManager alloc] init];
    IJKPlayerAdapter *adapter = [[IJKPlayerAdapter alloc] initWithIJKPlayer:ijkplayer];
    _player = adapter;
    [_player av_play];
    [_player av_resume];
    [_player av_stop];
    NSLog(@"--------------------");
    
    // 类适配器
//    IJKPlayerManager1 *ijkplayer = [[IJKPlayerManager1 alloc] init];
    IJKPlayerAdapter1 *adapter1 = [[IJKPlayerAdapter1 alloc] init];
    _player = adapter1;
    [_player av_play];
    [_player av_resume];
    [_player av_stop];
    
    
    /**
     总结:
     - 对象适配器
        使适配器持有这个对象,当这个对象的某些数据和某些方法不适合直接调用时,你可以在适配器内将其转换成你需要的东西,进而进行处理
     - 类适配器
        适配器需要通过继承两个接口,同样可以在适配器内处理数据方法
     
     两者只是形式不同,本质一样
     一般案例里的情况应该是
     AVPlayerManager这个类关于播放器的操作方法应该是只暴露在.h文件中
     这里如果用到适配器模式的话,则需要将暴露的方法定义在协议接口里,让新旧播放器可以在业务层上调用同一套接口方法
     对于其具体的实现逻辑,AVPlayer的逻辑不变,IJKPlayer的逻辑还是在IJKPlayerManager类处理
     适配器就是起到一个转换的作用
     
     */
    
    return 0;
}
