//
//  User.h
//  05Builder建造者模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SessionConfigProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic,strong) id<SessionConfigProtocol> sessionConfig;

- (void)showUserAuthorization;

@end

NS_ASSUME_NONNULL_END
