//
//  Aggregate.h
//  11Interpreter解释器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Iterato;

@interface Aggregate : NSObject
-(Iterato *)CreateIterator;
@end

NS_ASSUME_NONNULL_END
