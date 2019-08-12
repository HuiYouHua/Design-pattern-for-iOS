//
//  main.m
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NimoCar.h"
#import "NimoEngine.h"
#import "NimoWheel.h"
#import "NimoComponentUpgrade.h"
#import "NimoComponentMaintenance.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 访问者模式封装了一些作用于某种数据结构中的各元素操作，它可以在不改变数据结构的前提下定义作用于这些元素的新的操作。
     2. 使用场景： 需要对一个对象结构中的对象进行很多不同的并且不相关的操作，而需要避免让这些操作"污染"这些对象的类，使用访问者模式将这些封装到类中。
     4.优点： 1.符合单一职责原则。 2.优秀的扩展性。 3.灵活性高
     5.缺点：1.具体元素对访问者公布细节，违反了迪米特原则。 2.具体元素变更比较困难。 3.违反了依赖倒置原则，依赖了具体类，没有依赖抽象。
     */
    
    NimoCar *car = [[NimoCar alloc] init];
    NimoEngine *engine = [[NimoEngine alloc] initWithModelName:@"V8"];
    NimoWheel *wheelA = [[NimoWheel alloc] init];
    NimoWheel *wheelB = [[NimoWheel alloc] init];
    NimoWheel *wheelC = [[NimoWheel alloc] init];
    NimoWheel *wheelD = [[NimoWheel alloc] init];
    
    car.engine = engine;
    [car addWheel:wheelA atIndex:0];
    [car addWheel:wheelB atIndex:1];
    [car addWheel:wheelC atIndex:2];
    [car addWheel:wheelD atIndex:3];
    
    NSLog(@"%@", car);
    
    // 拿刚刚完成的Car类来举例，NimoCar类就是对象结构，其中包含的元素为：NimoEngine类和NimoWheel类。如果现在需要对Car进行全面升级(新操作)，通常的做法是NimoEngine与NimoWheel都向外提供“升级”的接口。如果还需要对Car进行维修呢？那又得向外提供“维修”的接口。随着类似的需求越多，NimoEngine与NimoWheel向外提供的接口就越多，类也变得越复杂。有没有简单的方法呢？有！把这些琐事都交给访问者来做吧，NimoEngine与NimoWheel只要同意被访问就成。
    //对组建进行“升级”
    NimoComponentUpgrade *upgradeVisitor = [[NimoComponentUpgrade alloc] init];
    [car acceptComponentVisitor:upgradeVisitor];
    
    NimoComponentMaintenance *maintenanceVisitor = [[NimoComponentMaintenance alloc] init];
    [car acceptComponentVisitor:maintenanceVisitor];
    
    // 使用访问者模式后，添加操作，只需实现具体的访问者，不会对类的结构造成破坏
    
    return 0;
}
