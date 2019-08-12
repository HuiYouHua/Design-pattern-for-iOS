//
//  UserLoginManger.m
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "UserLoginManger.h"

@implementation UserLoginManger

- (instancetype)initWithUser:(User *)user
{
    self = [super init];
    if (self) {
        _user = user;
    }
    return self;
}

- (void)login {
    NSLog(@"%@登录",self.user.name);
}

- (void)logout {
    NSLog(@"%@注销",self.user.name);
}

@end
