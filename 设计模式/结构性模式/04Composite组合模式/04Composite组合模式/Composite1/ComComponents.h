//
//  ComComponents.h
//  CompositeDemo
//公共的接口
//  Created by zhanggui on 15/8/6.
//  Copyright (c) 2015年 zhanggui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ComComponents : NSObject
{
    NSString *name;   //在此声明的成员变量只能在自己的类内部使用，而不能在类的外部使用，
}
//@property(nonatomic,strong)NSString *name;    //在此声明成员变量可以再类的外部访问，在类的内部可以用过下划线或者self访问
- (ComComponents *)MyInit:(NSString *)myName;
- (void)Add:(ComComponents *)c;
- (void)Remove:(ComComponents *)c;
-(void)Display:(int)depth;
@end
