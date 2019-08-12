//
//  Aggregate.m
//  11Interpreter解释器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "Aggregate.h"
#import "Iterato.h"

@implementation Aggregate
-(Iterato *)CreateIterator{
    return [[Iterato alloc]init];
}
@end
