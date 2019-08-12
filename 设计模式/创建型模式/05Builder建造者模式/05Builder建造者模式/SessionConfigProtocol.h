//
//  SessionConfigProtocol.h
//  05Builder建造者模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SessionConfigProtocol <NSObject>
@optional
- (BOOL)autoDownload;

- (BOOL)disableInput;
@end

NS_ASSUME_NONNULL_END
