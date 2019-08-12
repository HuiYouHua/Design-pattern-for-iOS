//
//  NimoCar.h
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN
@class NimoEngine, NimoWheel;
@interface NimoCar : NSObject

@property (nonatomic) NimoEngine *engine;
@property (nonatomic, readonly) NSArray *arrayOfWheels;

- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger) index;

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor;


@end

NS_ASSUME_NONNULL_END
