//
//  FoodFactory.h
//  03FactoryMethod工厂方法模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HumanType.h"
NS_ASSUME_NONNULL_BEGIN

@class Food;
@interface FoodFactory : NSObject

+ (Food *)createFoodWithType:(FoodType)foodType;

@end

NS_ASSUME_NONNULL_END
