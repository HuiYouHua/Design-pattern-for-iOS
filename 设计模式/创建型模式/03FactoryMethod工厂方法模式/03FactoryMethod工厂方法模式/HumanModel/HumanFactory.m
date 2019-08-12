//
//  HumanFactory.m
//  03FactoryMethod工厂方法模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "HumanFactory.h"

#import "WhiteHuman.h"
#import "YellowHuman.h"
#import "BlackHuman.h"

@implementation HumanFactory

+ (Human *)createHumanWithType:(HumanType)humanType {
    switch (humanType) {
        case WhiteHumanType:
            return [[WhiteHuman alloc] init];
            break;
        case YellowHumanType:
            return [[YellowHuman alloc] init];
            break;
        case BlackHumanType:
            return [[BlackHuman alloc] init];
            break;
            
        default:
            break;
    }
}

@end
