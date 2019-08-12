//
//  NimoComponentMaintenance.h
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface NimoComponentMaintenance : NSObject <NimoComponentVisitor>

- (void) visitEngine:(NimoEngine *) engine;
- (void) visitWheel:(NimoWheel *) wheel;

@end

NS_ASSUME_NONNULL_END
