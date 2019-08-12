//
//  NimoWheel.h
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface NimoWheel : NSObject

@property (nonatomic, assign) float diameter; //车轮直径

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor;


@end

NS_ASSUME_NONNULL_END
