//
//  Leaf.m
//  CompositeDemo
//
//  Created by zhanggui on 15/8/6.
//  Copyright (c) 2015年 zhanggui. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

-(Leaf *)MyInit:(NSString *)myName {
    name = myName;
    return self;
}
-(void)Add:(ComComponents *)c {
    NSLog(@"Can not add a leaf");
}
-(void)Remove:(ComComponents *)c {
    NSLog(@"Can not remove from a leaf");
}
-(void)Display:(int)depth {
    NSLog(@"[%dLevel]%@",depth,name);
}
@end
