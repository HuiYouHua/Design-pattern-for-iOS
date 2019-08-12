//
//  EventHandleManager.m
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "EventHandleManager.h"

@implementation EventHandleManager

- (instancetype)initWithLable:(UILabel *)numLabel {
    self = [super init];
    if (self) {
        _numLabel = numLabel;
    }
    return self;
}

- (void)reduceLabel {
    _numLabel.text = [NSString stringWithFormat:@"%d",[_numLabel.text intValue] - 1];
}

- (void)addLabel {
    _numLabel.text = [NSString stringWithFormat:@"%d",[_numLabel.text intValue] + 1];
}

- (void)resetLabel {

}

@end
