//
//  main.m
//  10Iterator迭代器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 迭代器模式提供一种方法访问一个容器对象中各个元素，而又不需暴露该对象的内部细节。
     2. 使用场景： 一个聚合对象有遍历的需求
     3. 具体实现： 在 Cocoa Touch 中的 NSEnumerator类 就实现了迭代器模式。还有基于块的枚举也是迭代器模式的实现等等
     4.优点： 1.它支持以不同的方式遍历一个聚合对象。2.增加新的collection类和迭代器类都很方便。
     5.缺点： 迭代器和collection类是对应的，增加新的collection类就会增加新的迭代器，类的个数成对增加，可能会增加系统复杂度。
     */
    // 基础框架中的NSEnumerator类实现了迭代器模式。抽象NSEnumerator类的私有具体子类返回枚举器对象，能够顺序遍历各种几何--数组、集（set）、字典（值与键）,把集合的对象返回给客户端。
    // NSEnumerator可以枚举NSArray/NSDictionary和NSSet对象中的元素。它本身是个抽象类。它依靠几个工厂方法，如objectEnumerator或keyEnumerator，来创建并返回相应的具体枚举器对象。
    
    
    return 0;
}
