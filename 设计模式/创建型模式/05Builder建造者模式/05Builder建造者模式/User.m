//
//  User.m
//  05Builder建造者模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "User.h"

@implementation User



- (void)showUserAuthorization {
    NSLog(@"user autoDownload==%d",[self.sessionConfig autoDownload]);
    NSLog(@"user disableInput==%d",[self.sessionConfig disableInput]);
}

@end
