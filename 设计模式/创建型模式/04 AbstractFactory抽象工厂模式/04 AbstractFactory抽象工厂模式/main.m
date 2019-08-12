//
//  main.m
//  04 AbstractFactory抽象工厂模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HumanType.h"

#import "HumanFactory.h"
#import "Human.h"

#import "Food.h"
#import "FoodFactory.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 抽象工厂模式是工厂方式模式的升级版本，抽象工厂模式允许调用组件在不了解创建对象所需类的情况下，创建一组相关或者互相依赖的对象。
     2. 使用场景： 一个对象族有相同的约束时可以使用抽象工厂模式。
     4.优点： 良好的封装性：抽象工厂模式允许调用组件不必了解创建对象使用的类，也不必知道为什么选择这些类，因为我可以在不修改调用组件的情况下，对使用的类进行修改。
     5.缺点：  扩展产品族困难，需要更改接口及其下所有子类(什么是产品族：在抽象工厂模式中，产品族是指由同一个工厂生产的。例如苹果手机，苹果平板，苹果电脑)。
     */
    
    Food *milkFood = [FoodFactory createFoodWithType:MilkFoodType];
    milkFood.foodName = @"牛奶";
    Food *breadFood = [FoodFactory createFoodWithType:BreadFoodType];
    breadFood.foodName = @"面包";
    Food *fruitFood = [FoodFactory createFoodWithType:FruitFoodType];
    fruitFood.foodName = @"水果";
    
    Human *whiteMan = [HumanFactory createHumanWithType:WhiteHumanType];
    [whiteMan eatFood:milkFood];
    [whiteMan eatFood:breadFood];
    [whiteMan eatFood:fruitFood];
    
    Human *yellowMan = [HumanFactory createHumanWithType:YellowHumanType];
    [yellowMan eatFood:milkFood];
    [yellowMan eatFood:breadFood];
    [yellowMan eatFood:fruitFood];
    
    Human *blackMan = [HumanFactory createHumanWithType:BlackHumanType];
    [blackMan eatFood:milkFood];
    [blackMan eatFood:breadFood];
    [blackMan eatFood:fruitFood];
    
    
    
    return 0;
}
