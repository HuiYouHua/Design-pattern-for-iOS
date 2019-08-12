//
//  ConcreteAggregate.m
//  11Interpreter解释器模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ConcreteAggregate.h"
#import "Iterato.h"

@implementation ConcreteAggregate
-(id)init{
    if(self == [super init]){
        items = [NSMutableArray new];
    }
    return self;
}
-(Iterato *)CreateIterator{
    return [[Iterato alloc]init];
}
-(id)GetObject:(int)index{
    return [items objectAtIndex:index];
}
-(void)InsertObject:(id)Obj{
    [items addObject:Obj];
}
- (int)GetCount{
    return [items count];
}
@end
