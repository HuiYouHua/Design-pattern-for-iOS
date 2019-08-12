//
//  main.m
//  05Builder建造者模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "User.h"
#import "AuthorizationUserConfig.h"
#import "NoAuthorizationUserConfig.h"

int main(int argc, const char * argv[]) {
    
    /**
     1.定义: 将一个复杂的对象的构建与他的表示分离，使得同样的构建过程可以创建不同的表示。
     2. 使用场景： 当创建多种风格的对象时或者创建对象时涉及很多步骤，可以使用建造者模式。
     4.优点： 1.将产品的创建过程与产品本身分离开来，可以使用相同的创建过程来得到不同的产品。2.每一个具体建造者都相对独立，因此可以很方便地替换具体建造者或增加新的具体建造者。
     5.缺点： 1.建造者模式所创建的产品一般具有较多的共同点，其组成部分相似，如果产品之间的差异性很大，则不适合使用建造者模式，因此其使用范围受到一定的限制。2.如果产品的内部变化复杂，可能会导致需要定义很多具体建造者类来实现这种变化，导致系统变得很庞大。

     */
    
    User *authUser = [[User alloc] init];
    authUser.sessionConfig = [[AuthorizationUserConfig alloc] init];
    [authUser showUserAuthorization];
    
    User *noauthUser = [[User alloc] init];
    noauthUser.sessionConfig = [[NoAuthorizationUserConfig alloc] init];
    [noauthUser showUserAuthorization];
    
    return 0;
}
