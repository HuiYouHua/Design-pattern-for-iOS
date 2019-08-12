//
//  Clothing.h
//  03Decorator装饰器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN


@interface Clothing : NSObject

@property (nonatomic,strong) Person *person;

- (instancetype)initWithPerson:(Person *)person;

- (void)drawClothing;

@end

NS_ASSUME_NONNULL_END
