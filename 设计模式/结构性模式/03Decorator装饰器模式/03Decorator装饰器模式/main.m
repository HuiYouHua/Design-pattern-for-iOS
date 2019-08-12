//
//  main.m
//  03Decorator装饰器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Person.h"
#import "Shirts.h"
#import "Pants.h"
#import "Shoe.h"
#import "Hat.h"


int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 装饰模式能动态的给一个对象添加一些额外的职责。就增加功能来说，装饰模式会比通过继承生成子类更为灵活。
     2. 使用场景： 需要动态地给一个对象增加功能，这些功能也可以动态地被撤销。
     3. 具体实现： Objective-C中的Category
     4.优点： 装饰器模式中定义的行为，能够在不创建大量子类的情况下，组合起来实现复杂的效果，比继承更加灵活。
     5.缺点： 装饰器模式会导致设计中出现许多的小对象，会让系统变得更加复杂，比如说出错调试时寻找错误可能需要逐级排查。
     

     */
    
    Person *person1 = [[Person alloc] init];
    person1.name = @"张三";
    [person1 showClothing];
    Shirts *shirts1 = [[Shirts alloc] initWithPerson:person1];
    [shirts1 drawClothing];
    
    Pants *pants1 = [[Pants alloc] initWithPerson:person1];
    [pants1 drawClothing];
    
    Shoe *shoe1 = [[Shoe alloc] initWithPerson:person1];
    [shoe1 drawClothing];
    
    NSLog(@"-------------");
    
    Person *person2 = [[Person alloc] init];
    person2.name = @"李四";
    [person2 showClothing];
    Shirts *shirts2 = [[Shirts alloc] initWithPerson:person2];
    [shirts2 drawClothing];
    
    Pants *pants2 = [[Pants alloc] initWithPerson:person2];
    [pants2 drawClothing];
    
    Hat *hat2 = [[Hat alloc] initWithPerson:person2];
    [hat2 drawClothing];
    
    /**
     这里的Shirts, Pants, Pants, Hat就是对Person对象的一个装饰, 根据不同的需要选择给person穿上不同的衣服, 在这些装饰类中需要持有被装饰对象
     */
    
    return 0;
}
