//
//  MessageProvideProtocol.h
//  02Bridge桥接模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class MessageProvider;
@protocol MessageProvideProtocol <NSObject>

@optional
- (MessageProvider *)messageProvider;

@end

NS_ASSUME_NONNULL_END
