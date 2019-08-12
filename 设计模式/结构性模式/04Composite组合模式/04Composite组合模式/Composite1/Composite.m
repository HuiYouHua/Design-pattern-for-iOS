//
//  Composite.m
//  CompositeDemo
//
//  Created by zhanggui on 15/8/6.
//  Copyright (c) 2015年 zhanggui. All rights reserved.
//

#import "Composite.h"

@implementation Composite

-(Composite *)MyInit:(NSString *)myName {
    name = myName;
    childrenArr = [NSMutableArray new];
    return self;
}

- (void)Add:(ComComponents *)c {
    [childrenArr addObject:c];
}
- (void)Remove:(ComComponents *)c {
    [childrenArr removeObject:c];
}
-(void)Display:(int)depth {
    NSLog(@"[%dLevel]%@",depth,name);
    for(ComComponents *component in childrenArr) {
        [component Display:depth+1];
    }
}
@end
