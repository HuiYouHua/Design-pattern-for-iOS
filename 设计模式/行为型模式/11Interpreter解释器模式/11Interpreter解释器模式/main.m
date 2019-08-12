//
//  main.m
//  11Interpreter解释器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ConcreteAggregate.h"
#import "Iterato.h"
#import "ConcreteIterator.h"
int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 给定一门语言，定义它的文法的一种表示，并定义一个解释器，该解释器使用该表示来解释语言中的句子。
     2. 使用场景： 解释器模式在实际项目中用到的比较少，正则表达式就是用的解释器模式。
     3. 具体实现： 正则表达式。
     4.优点： 容易改变和扩展问法。
     5.缺点： 效率是严重的问题。
    
     */
    ConcreteAggregate *a = [[ConcreteAggregate alloc]init];
    [a InsertObject:@"张三"];
    [a InsertObject:@"李四"];
    [a InsertObject:@"王二"];
    [a InsertObject:@"麻子"];
    NSLog(@"Count:%d", [a GetCount]);
    Iterato *i = [[ConcreteIterator alloc]MyInit:a];
    while (![i IsDone]) {
        NSLog(@"%@，请买票",[i CurrentItem]);
        [i Next];
    }
    return 0;
}
