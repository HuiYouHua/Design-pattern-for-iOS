//
//  UserLoginManger.h
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginProtocol.h"

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserLoginManger : NSObject<LoginProtocol>

@property (nonatomic, strong) User *user;

- (instancetype)initWithUser:(User *)user;

- (void)login;

- (void)logout;


@end

NS_ASSUME_NONNULL_END
