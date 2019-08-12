//
//  ObserverManager.m
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ObserverManager.h"

@interface ObserverManager ()

@property (nonatomic,strong) NSMutableArray *observerArray;

@end

@implementation ObserverManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observerArray = [NSMutableArray array];
    }
    return self;
}

- (void)addObserver:(UserLoginManger *)loginManager {
    [_observerArray addObject:loginManager];
}

- (void)removeObserver:(UserLoginManger *)loginManager {
    [_observerArray removeObject:loginManager];
}
- (void)postObserver {
    for (UserLoginManger *loginManager in _observerArray) {
        NSLog(@"%@登录/注销了",loginManager.user.name);
    }
    
}

@end
