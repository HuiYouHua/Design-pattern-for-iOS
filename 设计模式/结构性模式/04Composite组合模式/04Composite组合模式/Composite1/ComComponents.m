//
//  ComComponents.m
//  CompositeDemo
//类接口
//  Created by zhanggui on 15/8/6.
//  Copyright (c) 2015年 zhanggui. All rights reserved.
//

#import "ComComponents.h"

@implementation ComComponents

-(ComComponents *)MyInit:(NSString *)myName {
    name = myName;
    return self;
}

-(void)Add:(ComComponents *)c {
    return;
}
-(void)Remove:(ComComponents *)c {
    return;
}
-(void)Display:(int)depth {
    return;
}
@end
