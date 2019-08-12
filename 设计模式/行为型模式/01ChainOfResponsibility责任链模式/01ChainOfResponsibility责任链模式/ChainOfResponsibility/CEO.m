//
//  CEO.m
//  01ChainOfResponsibility责任链模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "CEO.h"

@implementation CEO

- (void)handleVacationDays:(NSInteger)days {
    if (days < 10) {
        NSLog(@"去吧,给你放%ld天假",(long)days);
        return;
    } else {
        NSLog(@"行吧行吧去吧,给你放%ld天假",(long)days);
    }
}
@end
