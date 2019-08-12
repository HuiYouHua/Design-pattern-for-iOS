//
//  IJKPlayerAdapter.m
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "IJKPlayerAdapter.h"
#import "IJKPlayerManager.h"

@interface IJKPlayerAdapter ()

@property (nonatomic,strong) IJKPlayerManager *ijkPlayer;

@end

@implementation IJKPlayerAdapter

- (instancetype)initWithIJKPlayer:(IJKPlayerManager *)ijkPlayer {
    self = [super init];
    if (self) {
        _ijkPlayer = ijkPlayer;
    }
    return self;
}


- (void)av_play {
    [self.ijkPlayer play];
}

- (void)av_resume {
    [self.ijkPlayer resume];
}

- (void)av_stop {
    [self.ijkPlayer stop];
}

@end
