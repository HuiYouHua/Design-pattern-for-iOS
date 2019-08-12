//
//  FoodFactory.m
//  03FactoryMethod工厂方法模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "FoodFactory.h"
#import "MilkFood.h"
#import "BreadFood.h"
#import "FruitFood.h"

@implementation FoodFactory

+ (Food *)createFoodWithType:(FoodType)foodType {
    switch (foodType) {
        case MilkFoodType:
            return [MilkFood new];
            break;
        case BreadFoodType:
            return [BreadFood new];
            break;
        case FruitFoodType:
            return [FruitFood new];
            break;
            
        default:
            break;
    }
}

@end
