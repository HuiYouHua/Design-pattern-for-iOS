//
//  main.m
//  06FlyWeight享元模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FlyweightFactory.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    
    /**
     1、什么是享元模式
     它使用共享物件，用来尽可能减少内存使用量以及分享资讯给尽可能多的相似物件；它适合用于只是因重复而导致使用无法令人接
     受的大量内存的大量物件
     在我看来，算是一个类中有多种的单例，单例模式属于特殊的享元模式，即只有一个对象的享元。享元属于拥有多种状态的单例模式，不同状态有不同的对象，每个对象都可以共享。
     
     2、享元模式用在什么地方
     
     存在大量相同对象或者只有一些外部状态不同的对象时，而这些对象造成了很大的存储开销的时候
     存在多种单例，单例与单例之间仅存在外部状态不同的情况
     享元状态使用频率不高，因为大多数的情况下不会碰到同时存在的大量对象，除非是为了一些动画特效等。
     3、享元模式的使用
     在享元对象中定义所有的外部状态枚举和用来存放的字典
     将整个享元对象单例化
     通过状态不同，获取不同的对象
     
     4、总结
     享元模式的作用是为了减少内存，不过在一般的情况下，是用不到的，在对象少的情况下，不需要额外处理。
     */
    
    FlyweightFactory *factory = [[FlyweightFactory alloc] init];
    Circle *redCircle1 = [factory createCircleWithColorString:@"红色"];
    Circle *redCircle2 = [factory createCircleWithColorString:@"红色"];
    Circle *blueCircle1 = [factory createCircleWithColorString:@"蓝色"];
    Circle *blueCircle2 = [factory createCircleWithColorString:@"蓝色"];
    Circle *redCircle3 = [factory createCircleWithColorString:@"红色"];
    [redCircle1 draw];
    [redCircle2 draw];
    [blueCircle1 draw];
    [blueCircle2 draw];
    [redCircle3 draw];
    [factory getCount];
    
    return 0;
}
