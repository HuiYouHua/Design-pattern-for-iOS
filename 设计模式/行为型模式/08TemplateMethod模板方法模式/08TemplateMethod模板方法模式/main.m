//
//  main.m
//  08TemplateMethod模板方法模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "iOSPublish.h"
#import "AndroidPublish.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 定义一个操作中的算法的框架，而降一些步骤延迟到子类中。使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。
     2. 使用场景： 1.多个子类有公有的方法，并且逻辑基本相同时。2.有重要、复杂的算法的时候，可以把核心算法设计为模板方法，周边的相关细节功能则由各个子类实现。
     3. 具体实现： 这里简单举了一个Android 和iOS项目的从code到发布的简易过程Demo
     4.优点： 1.封装不变部分，扩展可变部分。 2.提取公共代码，便于维护。 3.行为由父类控制，子类实现。
     5.缺点： 每一个不同的实现都需要一个子类来实现，导致类的个数增加，使得系统更加庞大。
     */
    
    iOSPublish *iOS = [[iOSPublish alloc] init];
    [iOS publish];
    NSLog(@"---------我是华丽丽的分割线------------");
    AndroidPublish *android = [[AndroidPublish alloc] init];
    [android publish];
    
    // 也就是父类声明方法
    // 让子类去实现
    return 0;
}
