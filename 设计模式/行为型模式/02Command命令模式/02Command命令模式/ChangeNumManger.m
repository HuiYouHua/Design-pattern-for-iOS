//
//  ChangeNumManger.m
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ChangeNumManger.h"

@interface ChangeNumManger ()

@property (nonatomic,strong) NSMutableArray *excuteArray;

@end

@implementation ChangeNumManger

- (instancetype)init
{
    self = [super init];
    if (self) {
        _excuteArray = [NSMutableArray array];
    }
    return self;
}

- (void)reduceLabel:(id<LabelNumChangeProtocol>)changeObj {
    [_excuteArray addObject:changeObj];
    [changeObj excute];
}
- (void)addLabel:(id<LabelNumChangeProtocol>)changeObj {
    [_excuteArray addObject:changeObj];
    [changeObj excute];
}
- (void)rooBackLabel {
    if (_excuteArray && _excuteArray.count>0) {
        [[_excuteArray lastObject] roolBack];
        [_excuteArray removeLastObject];
    }
    
}

@end
