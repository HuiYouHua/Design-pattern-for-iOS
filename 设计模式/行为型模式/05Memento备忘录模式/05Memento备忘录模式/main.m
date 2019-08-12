//
//  main.m
//  05Memento备忘录模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "EditorMemento.h"
#import "Editor.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就开奖对象恢复到原先保存的状态了。
     2. 使用场景： 需要存档的时候，比如说游戏中的存档。
     3. 具体实现： 打游戏时的存档，数据库的事务管理，SVN以及Git代码的版本控制系统等等都可以说成是备忘录模式的实例。这里我简单的举了一下例子，具体请点击这里查看
     4.优点： 1.给用户提供了一种可以恢复状态的机制，可以使用户能够比较方便地回到某个历史的状态。 2.实现了信息的封装，使得用户不需要关心状态的保存细节。
     5.缺点： 在一些场景下比较消耗资源。
     6.注意事项: 不要在频繁建立备份的场景中使用备忘录模式，比如说在for循环中。
     
     */
    
    /**
     实际上就是,将对象存储下来,然后你可以接着修改这个对象
     但是等到下次你还需要使用这个对象的时候,这个对应应该还是以前你没有修改过的样子时,你就可以使用备忘录模式
     */
    
    Editor *editor = [[Editor alloc] init];
    [editor insertContent:@"总熬夜会带来三个问题"];
    [editor insertContent:@"第一:记忆力会明显下降"];
    [editor insertContent:@"第二:数数经常会数错"];
    EditorMemento *memento = [editor save];
    [editor insertContent:@"第四:记忆力会明显下降"];
    [editor echo];
    NSLog(@"//------------------------------------");
    [editor restore:memento];
    [editor echo];
    
    return 0;
}
