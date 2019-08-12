//
//  BlackHuman.m
//  MLDesignPatterns-OC
//
//  Created by mjpc on 2017/8/16.
//  Copyright © 2017年 mali. All rights reserved.
//

#import "BlackHuman.h"

@implementation BlackHuman

- (void)eatFood:(Food *)food {
    NSLog(@"BlackHuman eat %@",food.foodName);
}

@end
