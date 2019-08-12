//
//  EventHandleManager.h
//  02Command命令模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EventHandleManager : NSObject

@property (nonatomic,strong) UILabel *numLabel;

- (instancetype)initWithLable:(UILabel *)numLabel;

- (void)reduceLabel;
- (void)addLabel;
- (void)resetLabel;
@end

NS_ASSUME_NONNULL_END
