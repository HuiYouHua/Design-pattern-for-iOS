//
//  NimoComponentUpgrade.m
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "NimoComponentUpgrade.h"

@implementation NimoComponentUpgrade

- (void) visitEngine:(NimoEngine *) engine
{
    NSLog(@"我是升级人员，正在对引擎<%@>进行升级", engine);
}

- (void) visitWheel:(NimoWheel *) wheel
{
    NSLog(@"我是升级人员，正在对车轮<%@>进行升级", wheel);
}

@end
