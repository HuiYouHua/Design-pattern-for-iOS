//
//  main.m
//  03FactoryMethod工厂方法模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HumanType.h"

#import "HumanFactory.h"
#import "Human.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 定义一个用于创建对象的接口，让子类决定实例化哪一个类。
     2. 使用场景： 当存在多个类共同实现一个协议或者共同继承一个基类的时候，需要创建不同的对象，这个时候就可以考虑是否有必要使用工厂类进行管理。
     4.优点： 1.在工厂方法中，用户只需要知道所要产品的具体工厂，不需要知道具体的创建过程，甚至不需要具体产品类。2.在系统增加新的产品时，我们只需要添加一个具体产品类和对应的实现工厂，无需对原工厂进行任何修改，很好地符合了“开闭原则”。
     5.缺点： 每次增加一个产品时，都需要增加一个具体类和对象实现工厂，代码量会增加，也增加了系统的复杂度。
     */
    
    Human *whiteMan = [HumanFactory createHumanWithType:WhiteHumanType];
    [whiteMan eat];
    
    Human *yellowMan = [HumanFactory createHumanWithType:YellowHumanType];
    [yellowMan eat];
    
    Human *blackMan = [HumanFactory createHumanWithType:BlackHumanType];
    [blackMan eat];
    
    
    
    return 0;
}
