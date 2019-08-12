//
//  NimoWheel.m
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "NimoWheel.h"

@implementation NimoWheel

- (id)init
{
    self = [super init];
    if (self) {
        _diameter = 400.0f;
    }
    return self;
}

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor
{
    [visitor visitWheel:self];
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Wheel: %f mm", _diameter];
}

@end
