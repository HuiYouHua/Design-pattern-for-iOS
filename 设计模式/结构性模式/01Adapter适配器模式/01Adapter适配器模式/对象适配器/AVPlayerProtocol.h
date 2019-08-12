//
//  AVPlayerProtocol.h
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AVPlayerProtocol <NSObject>

- (void)av_play;

- (void)av_resume;

- (void)av_stop;

@end

NS_ASSUME_NONNULL_END
