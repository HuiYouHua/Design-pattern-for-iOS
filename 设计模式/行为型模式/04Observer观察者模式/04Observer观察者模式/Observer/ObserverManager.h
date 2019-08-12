//
//  ObserverManager.h
//  04Observer观察者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NoticeProtocol.h"
#import "UserLoginManger.h"
NS_ASSUME_NONNULL_BEGIN

@interface ObserverManager : NSObject<NoticeProtocol>

@end

NS_ASSUME_NONNULL_END
