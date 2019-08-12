//
//  NimoEngine.m
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "NimoEngine.h"

@implementation NimoEngine

- (id)initWithModelName:(NSString *)modelName
{
    self = [super init];
    if (self) {
        _modelName = [modelName copy];
    }
    return self;
}

- (id) init
{
    return [self initWithModelName:@"Slant 6"];
}

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor
{
    [visitor visitEngine:self];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Engine: %@", _modelName];
}

@end
