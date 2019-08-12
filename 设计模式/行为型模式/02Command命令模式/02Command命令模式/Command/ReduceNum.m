//
//  ReduceNum.m
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ReduceNum.h"

@implementation ReduceNum



- (void)excute {
    [self.handle reduceLabel];
}

- (void)roolBack {
    [self.handle addLabel];
}

@end
