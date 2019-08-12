//
//  MessageProvider.h
//  02Bridge桥接模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageProvideProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface MessageProvider : NSObject<MessageProvideProtocol>

@property (nonatomic,copy) NSString *className;

@end

NS_ASSUME_NONNULL_END
