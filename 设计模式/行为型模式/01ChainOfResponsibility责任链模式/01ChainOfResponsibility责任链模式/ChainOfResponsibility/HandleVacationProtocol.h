//
//  HandleVacationProtocol.h
//  01ChainOfResponsibility责任链模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HandleVacationProtocol <NSObject>

@optional
- (void)handleVacationDays:(NSInteger)days;

@end

NS_ASSUME_NONNULL_END
