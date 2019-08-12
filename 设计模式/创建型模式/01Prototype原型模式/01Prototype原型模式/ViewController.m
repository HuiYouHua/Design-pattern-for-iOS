//
//  ViewController.m
//  01Prototype原型模式
//
//  Created by 华惠友 on 2019/5/10.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "Company.h"
#import "EmployeeDeepCopy.h"
#import "EmployeeShallowCopy.h"

#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Company *sina = [[Company alloc] initWithName:@"新浪" establishmentTime:@"2014-08-08" level:@"上市"];
    Company *alibaba = [[Company alloc] initWithName:@"阿里巴巴" establishmentTime:@"2008-08-08" level:@"上市"];
    EmployeeShallowCopy *zhangSan = [[EmployeeShallowCopy alloc] initWithName:@"张三" configWithAge:20 department:@"IT" company:sina];
    EmployeeDeepCopy *zhangsanDeep = [[EmployeeDeepCopy alloc] initWithName:@"张三deep" configWithAge:20 department:@"IT" company:alibaba];
    
    
    /**
        这里liSi是通过浅拷贝方式克隆的
        EmployeeShallowCopy,遵循了NSCopy协议,实现了- (id)copyWithZone:(NSZone *)zone方法
        在方法内部直接通过指针赋值的方式,达到了浅拷贝效果
        所以liSi和zhangSan 指的是同一块内存区域,只是拷贝了对象指针,也就是浅拷贝
        因此当修改对象中的属性时,因为指向同一块内存,所以,两者的值都发生改变了
     */
    EmployeeShallowCopy *liSi = [zhangSan copy];
    sina.name = @"浪里个浪";
    NSLog(@"%@----%@----%@", liSi.company.name, zhangSan.company.name, sina.name);
    
    
    /**
     这里wangWu是通过深拷贝方式克隆的
     EmployeeDeepCopy,遵循了NSCopy协议,实现了- (id)copyWithZone:(NSZone *)zone方法
     在方法内部直接通过copy方式,直接赋值了对象的指针和内存,达到了深拷贝效果
     因此zhangsanDeep和wangWu 是两个不同的对象(指针不同,指针指向的内存也不同)
     所以当修改alibaba.name的值得时候,它修改的是原对象的zhangsanDeep的值(因为alibaba这个对象时跟zhangsanDeep关联的)
     wangWu是将zhangsanDeep这个对象的所以属性方法都拷贝了一份,zhangsanDeep和wangWu是完全不同的对象
     */
    EmployeeDeepCopy *wangWu = [zhangsanDeep copy];
    
    alibaba.name = @"新阿里巴巴";
    NSLog(@"%@----%@----%@", wangWu.company.name, zhangsanDeep.company.name, alibaba.name);
    wangWu.company.name = @"wangWu的公司";
    NSLog(@"%@----%@----%@", wangWu.company.name, zhangsanDeep.company.name, alibaba.name);

    /**
     1. 定义：原型模式是通过克隆已有的对象来创建新的对象，已有的对象称为原型。通俗来讲，原型模式就是允许你创建现有对象的副本并根据需要进行修改，而不是从头开始创建对象并进行设置。
     2. 使用场景：通过初始化产生一个对象需要非常繁琐的准备步骤，也就是新生成一个对象的代价比较大，则可以考虑使用原型模式。
     3. 具体实现：原型模式实现起来比较简单，iOS实现这个模式用的就是copy方法，如果是类使用copy，那这个类就要实现。NSCopying协议中的copyWithZone方法，告诉程序如何复制该对象。（当然也可以自己定义协议和自定义copy方法来克隆，但是不建议这样做)。具体代码可以看Demo。另外在Foudation框架中你也会找到大量实现了NSCopying或者NSMutableCopying的类。
     4.优点： 在某些场景可以避免内存开销大的创建初始化动作。
     5.缺点： 基本没有缺点可言。
     6.注意事项: 涉及到copy，注意下深复制和浅复制就好。
     */
    
    /**
        也即当你需要获取一个跟已创建对象相同对象,其不想对这个新对象的操作影响到原对象的时候,又不想重新通过繁杂的操作创建对象时,你可以通过这种原型模式来克隆一个对象,进行处理
     */
    
    
    
    
    [self copyArray];
    
    
}

- (void)copyArray {
    /**
     深拷贝 : 拷贝出来的对象与源对象地址不一致! 这意味着我修改拷贝对象的值对源对象的值没有任何影响.
     浅拷贝 : 拷贝的是指针地址，拷贝出来的对象与源对象地址一致! 这意味着我修改拷贝对象的值会直接影响到源对象.
     
     针对NSArray、NSDictionary、NSSet容器类型的对象，深拷贝可分为："不完全深拷贝"和"完全深拷贝"。
     - 不完全深拷贝：拷贝出来的容器是新的对象，但是容器里面的对象还是原来对象。
     - 完全深拷贝：拷贝出来的容器是新的对象，容器里面的对象也是新对象
     
     只有定义“不可变与可变”区别的类才应采用此协议（NSMutableCopying协议）也即只有定义不可变与可变区别的类，才可以使用mutableCopy,即只有NSMutableXXX,才能继承NSMutableCopying协议,一般的类智能继承NSCopying协议
     */
    
    /**
     NSString 类型的字符串:string
     [string  copy]------------------------------->NSString类型的     （浅拷贝）
     [string mutableCopy]-------------------->NSMutableString类型    （深拷贝）
     
     NSMutableString类型的字符串：mString
     [mString  copy]------------------------------->NSMutableString类型的   （ 深拷贝）
     [mString mutableCopy]-------------------->NSMutableString类型       （深拷贝）
     
     
     
     NSArray类型的数组:arr
     [arr  copy]------------------------------->NSArray类型    （浅拷贝）
     [arr mutableCopy]-------------------->NSMutableArray类型    （深拷贝）
     
     NSMutableArray类型的数组:mArr
     [mArr  copy]------------------------------->NSArray类型   （ 深拷贝）
     [mArr mutableCopy]-------------------->NSMutableArray类型     （深拷贝）
     
     不管是copy还是mutableCopy,拷贝出来的对象都是不可变的
     */
    
    User *u1 = [[User alloc] init];
    u1.name = @"小明";
    
    User *u2 = [[User alloc] init];
    u2.name = @"张三";

    //不可变数组
    NSArray *arr = [NSArray arrayWithObjects:u1,u2, nil];
    id arr_copy = [arr copy];
    id arr_mutableCopy = [arr mutableCopy];
    //可变数组
    NSMutableArray *mArr = [NSMutableArray arrayWithObjects:u1,u2, nil];
    id mArr_copy = [mArr copy];
    id mArr_mutableCopy = [mArr mutableCopy];
    
    NSLog(@"%@", arr);
    NSLog(@"%@", arr_copy);
    NSLog(@"%@", arr_mutableCopy);
    
    
    /**
     Printing description of arr:
     <__NSArrayI 0x60000001fac0>(
     <Company: 0x60000001fba0>,
     <Company: 0x60000001fba0>
     )
     
     Printing description of arr_copy:
     <__NSArrayI 0x60000001fac0>(
     <Company: 0x60000001fba0>,
     <Company: 0x60000001fba0>
     )
     
     Printing description of arr_mutableCopy:
     <__NSArrayM 0x600000e50030>(
     <Company: 0x60000001fba0>,
     <Company: 0x60000001fba0>
     )
     */
    NSLog(@"------------------------");
    NSLog(@"%@", mArr);
    NSLog(@"%@", mArr_copy);
    NSLog(@"%@", mArr_mutableCopy);
    /**
     Printing description of mArr:
     <__NSArrayM 0x6000027535a0>(
     <User: 0x600002b10250>,
     <User: 0x600002b10270>
     )
     Printing description of mArr_copy:
     <__NSArrayI 0x600002923420>(
     <User: 0x600002b10250>,
     <User: 0x600002b10270>
     )
     Printing description of mArr_mutableCopy:
     <__NSArrayM 0x600002753480>(
     <User: 0x600002b10250>,
     <User: 0x600002b10270>
     )
     */
    
    
    /**
     1.没有对比，就不知道真相。通过对比可以看出，如果使用strong来修饰NSArray类型的数组，当array的数组被赋值了可变数组对象时，当可变数组改变时，NSArray数组里的对象也会跟着改变，这是我们不想要的结果。使用copy修饰，在被赋值可变数组时，会生成一个新的不可变数组对象，这样可变数组之后怎样变化，都不会影响NSArray类型的数组对象。
     2.再看看使用strong来修饰NSMutableArray类型的数组，当mArray的数组被赋值了可变数组对象时，当可变数组改变时，NSMutableArray数组里的对象也会跟着改变，这是符合我们预期的。当使用copy修饰后，被赋值后，会生成一个新的不可变数组对象。这样我们还以为它是可变类型的数组，然后使用增删改查，就会crash，也谈不上可以改变数组对象了。
     3.综上，用property声明NSArray数组时，最好使用copy。用property声明NSMutableArray数组时，最好使用strong。如果使用copy，又self.mArr来赋值，后面增删改查，程序肯定会crash的。

     */
}


@end
