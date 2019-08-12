//
//  main.m
//  09State状态模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TextEditor.h"
#import "BallPen.h"
#import "Pen.h"
#import "WritingBrush.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 当一个对象内在状态改变时允许其改变行为，这个对象看起来像改变了其类。
     2. 使用场景： 1.行为随状态改变而改变的场景。2.条件、分支判断语句的替代者。
     3. 具体实现： 这里举了一个不太恰当的例子，假如一支笔有3种状态可以切换，可以写钢笔字，圆珠笔字，毛笔字，具体请点击这里查看。再举一个实际中典型的例子就是酒店管理房间的时候，房间应该会有三种状态：空闲，已预订，已入住，同理。
     4.优点： 1.结构清晰，避免了过多的选择判断语句。2.封装性比较好。
     5.缺点： 子类会比较多，增加了复杂度。
     */
    
    // 也就是一个在对象中持有某个状态, 不同的状态不同的类, 通过写入不同的状态,则执行不同的方法
    TextEditor *editor = [[TextEditor alloc] initWithState:[[BallPen alloc] init]];
    [editor echo:@"硅谷来信第三封:再谈1W小时，三板斧破四困境"];
    editor.state = [[Pen alloc] init];
    [editor echo:@"学习-实践"];
    editor.state = [[WritingBrush alloc] init];
    [editor echo:@"掌握-教授"];
    return 0;
}
