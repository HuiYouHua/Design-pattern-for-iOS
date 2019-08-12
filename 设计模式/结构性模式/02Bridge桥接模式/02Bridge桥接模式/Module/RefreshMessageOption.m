//
//  RefreshMessageOption.m
//  02Bridge桥接模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "RefreshMessageOption.h"

@implementation RefreshMessageOption

- (void)messageOption {
    
    
    MessageProvider *provider = [self.messageProvider messageProvider];
    
    NSLog(@"%@正在刷新数据",provider.className);
}

@end
