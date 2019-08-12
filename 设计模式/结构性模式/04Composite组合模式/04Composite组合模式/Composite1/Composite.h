//
//  Composite.h
//  CompositeDemo
//
//  Created by zhanggui on 15/8/6.
//  Copyright (c) 2015年 zhanggui. All rights reserved.
//

#import "ComComponents.h"

@interface Composite : ComComponents
{
    NSMutableArray *childrenArr;
}
- (Composite *)MyInit:(NSString *)myName;

@end
