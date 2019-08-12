//
//  Clothing.m
//  03Decorator装饰器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "Clothing.h"

@implementation Clothing

- (instancetype)initWithPerson:(Person *)person {   
    self = [super init];
    if (self) {
        _person = person;
    }
    return self;
}

- (void)drawClothing {
    
}

@end
