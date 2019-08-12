//
//  AVPlayerManager.m
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "AVPlayerManager.h"

@implementation AVPlayerManager

- (void)av_play {
    NSLog(@"AVPlayer play");
}

- (void)av_resume {
    NSLog(@"AVPlayer resume");
}

- (void)av_stop {
    NSLog(@"AVPlayer stop");
}

@end
