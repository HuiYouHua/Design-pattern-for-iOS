//
//  IJKPlayerAdapter1.h
//  01Adapter适配器模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "IJKPlayerManager1.h"
#import "AVPlayerProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface IJKPlayerAdapter1 : IJKPlayerManager1<AVPlayerProtocol>

@end

NS_ASSUME_NONNULL_END
