//
//  IJKPlayerAdapter1.m
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "IJKPlayerAdapter1.h"

@implementation IJKPlayerAdapter1

- (void)av_play {
    [self ijk_play];
}

- (void)av_resume {
    [self ijk_resume];
}

- (void)av_stop {
    [self ijk_stop];
}

@end
