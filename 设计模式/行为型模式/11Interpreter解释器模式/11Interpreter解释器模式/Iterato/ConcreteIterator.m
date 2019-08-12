//
//  ConcreteIterator.m
//  11Interpreter解释器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ConcreteIterator.h"
#import "ConcreteAggregate.h"

@implementation ConcreteIterator

-(ConcreteIterator*)MyInit:(ConcreteAggregate*)aggregate{
    myAggregate = aggregate;
    return self;
}
-(id)First{
    return [myAggregate GetObject:0];
}
-(id)Next{
    current++;
    if(current< [myAggregate GetCount])
        return [myAggregate GetObject:current];
    else {
        return nil;
    }
}
-(BOOL)IsDone{
    return current>= [myAggregate GetCount] ?YES:NO;
}
-(id)CurrentItem{
    return [myAggregate GetObject:current];
}

@end
