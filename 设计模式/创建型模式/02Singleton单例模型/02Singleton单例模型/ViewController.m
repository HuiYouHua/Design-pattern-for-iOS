//
//  ViewController.m
//  02Singleton单例模型
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /**
     1.定义: 单例模式能够确保某个类在应用中只存在一个实例，创建之后会向整个系统共用这个实例。
     2. 使用场景： 需要用来保存全局的状态，并且不和任何作用域绑定的时候可以考虑单例。
     4.优点：在某些场景节省了一些内存开销，尤其是对一个需要频繁创建销毁的对象。
     5.缺点：单例对象一旦建立，对象指针是保存在静态区的，单例对象在堆中分配的内存空间，会在应用程序终止后才会被释放。�虽然也可以做到提前释放，但一般很少这样去做。另外单例类无法继承，扩展很困难。
     6.注意事项: 单例模式比较常用，也可能是很多初级工程师唯一会使用的设计模式。这里还是要尽量避免滥用单例，大家可以查看这篇文章 另外还要防止一下对单例对象的copy操作
     */
     Singleton *singleton =[Singleton sharedInstance];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
