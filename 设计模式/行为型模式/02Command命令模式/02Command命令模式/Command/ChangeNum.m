//
//  ChangeNum.m
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ChangeNum.h"


@implementation ChangeNum

- (instancetype)initWithEventHandle:(EventHandleManager *)handle {
    self = [super init];
    if (self) {
        _handle = handle;
    }
    return self;
}

@end
