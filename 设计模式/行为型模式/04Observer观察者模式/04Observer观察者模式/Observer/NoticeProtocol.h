//
//  NoticeProtocol.h
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class UserLoginManger;
@protocol NoticeProtocol <NSObject>

- (void)addObserver:(UserLoginManger *)loginManager;
- (void)removeObserver:(UserLoginManger *)loginManager;
- (void)postObserver;
@end

NS_ASSUME_NONNULL_END
