//
//  NimoComponentVisitor.h
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class NimoEngine, NimoWheel;
@protocol NimoComponentVisitor <NSObject>

- (void) visitEngine:(NimoEngine *) engine;
- (void) visitWheel:(NimoWheel *) wheel;

@end

NS_ASSUME_NONNULL_END
