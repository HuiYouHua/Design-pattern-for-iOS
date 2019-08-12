//
//  NimoCar.m
//  07Visitor访问者模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "NimoCar.h"
#import "NimoEngine.h"
#import "NimoWheel.h"

@interface NimoCar()

@property (nonatomic, readwrite) NSMutableArray *mutableArrayOfWheels;

@end

@implementation NimoCar

- (id)init
{
    if (self = [super init]) {
        _mutableArrayOfWheels = [[NSMutableArray alloc] initWithCapacity:4];
    }
    
    return self;
}

- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger) index
{
    [_mutableArrayOfWheels insertObject:wheel atIndex:index];
}

- (NSArray *)arrayOfWheels
{
    return [_mutableArrayOfWheels copy];
}

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>) visitor
{
    [_engine acceptComponentVisitor:visitor];
    for (NimoWheel *wheel in self.arrayOfWheels) {
        [wheel acceptComponentVisitor:visitor];
    }
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"My car: %@", [NSDictionary dictionaryWithObjects:@[_engine, self.arrayOfWheels] forKeys:@[@"Engine", @"Wheels"]]];
}

@end
