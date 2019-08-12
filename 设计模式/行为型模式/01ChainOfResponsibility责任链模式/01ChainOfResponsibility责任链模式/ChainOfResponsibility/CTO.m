//
//  CTO.m
//  01ChainOfResponsibility责任链模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "CTO.h"

@implementation CTO

- (void)handleVacationDays:(NSInteger)days {
    if (days < 10) {
        NSLog(@"去吧,给你放%ld天假",(long)days);
        return;
    } else {
        NSLog(@"CTO 没有权限,让我上级帮你看看");
        [self.handleMan handleVacationDays:days];
    }
}

@end
