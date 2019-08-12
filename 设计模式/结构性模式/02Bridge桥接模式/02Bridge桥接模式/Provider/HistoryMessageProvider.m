//
//  HistoryMessageProvider.m
//  02Bridge桥接模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "HistoryMessageProvider.h"

@implementation HistoryMessageProvider

- (MessageProvider *)messageProvider {
    return [HistoryMessageProvider new];
}

@end
