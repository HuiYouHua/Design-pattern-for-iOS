//
//  IJKPlayerAdapter.h
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVPlayerProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@class IJKPlayerManager;
@interface IJKPlayerAdapter : NSObject<AVPlayerProtocol>

- (instancetype)initWithIJKPlayer:(IJKPlayerManager *)ijkPlayer;

@end

NS_ASSUME_NONNULL_END
