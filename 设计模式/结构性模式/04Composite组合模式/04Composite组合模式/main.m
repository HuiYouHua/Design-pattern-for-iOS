//
//  main.m
//  04Composite组合模式
//
//  Created by 华惠友 on 2019/5/13.
//  Copyright © 2019 华惠友. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "Folder.h"
#import "HeaderFile.h"
#import "ImplementationFile.h"



#import "Leaf.h"
#import "Composite.h"

int main(int argc, const char * argv[]) {
    
    /**
     基本理解
     整体和部分可以一直对待。
     组合模式：将对象组合成树形结构以表示“部分--整体”的层次结构。组合模式使得用户对单个对象和组合独享的使用具有一致性。
     透明方式和安全方式
     透明方式：在Component（为组合中的对象声明接口）中声明所有用来管理子对象的方法 。这样实现该接口的子类都具有了该接口中的方法。这样的好处就是叶节点和枝节点对于外界没有区别，他们具有完全一致的行为接口。但问题也很明显，因为Leaf类本身不具备添加删除方法的功能，所以实现它是没有意义的。
     安全模式：在Component接口中不去声明Add和Remove方法，那么子类的Leaf也就不需要去实现它，而是在Composite声明所有用来管理子类对象的方法，这样做就不会出现刚才提到的问题，不过由于不够透明，所以树叶和树枝类将不具有相同的接口，客户端调用需要做相应的判断，带来了不便。
     何时使用组合模式
     当你发现需求中是体现部分与整体层次的结构时，以及你希望用户可以护绿组合对象昂与单个对象的不同，统一地使用组合结构中的所有对象时，就应该考虑用组合模式了。
     自定义控件时，就是把一些基本的控件组合起来，通过编程写成一个定制的控件。这就是典型的组合模式应用。
     
     组合模式的好处
     组合模式定义了包含基本对象和组合对象的类层次结构。基本对象可以被组合成更复杂的组合对象，而这些组合对象又可以被组合，这样不断地递归下去，客户端代码中，任何用的的基本对象的地方都可以使用组合对象了。
     组合模式让客户可以一致地使用组合结构和单个对象。
     何时使用组合模式
     想获得对象抽象的树形表示（整体部分的层次结构）。
     想让客户端统一处理组合结构中的所有对象。
     */
    
    Folder *folder = [[Folder alloc] initWithName:@"MLDesignPatterns-OC"];
    Folder *compositefolder = [[Folder alloc] initWithName:@"Composite"];
    [folder addFile:compositefolder];
    ImplementationFile *mainFile = [[ImplementationFile alloc] initWithName:@"main"];
    [folder addFile:mainFile];
    HeaderFile *fileHeaderFile = [[HeaderFile alloc] initWithName:@"File"];
    ImplementationFile *fileImplementationFile = [[ImplementationFile alloc] initWithName:@"File"];
    HeaderFile *fileSystemHeaderFile = [[HeaderFile alloc] initWithName:@"FileSystem"];
    HeaderFile *folderHeaderFile = [[HeaderFile alloc] initWithName:@"Folder"];
    ImplementationFile *folderImplementationFile = [[ImplementationFile alloc] initWithName:@"Folder"];
    HeaderFile *headerFileHeaderFile = [[HeaderFile alloc] initWithName:@"HeaderFile"];
    ImplementationFile *headerFileImplementationFile = [[ImplementationFile alloc] initWithName:@"HeaderFile"];
    HeaderFile *implementationFileHeaderFile = [[HeaderFile alloc] initWithName:@"ImplementationFile"];
    ImplementationFile *implementationFileImplementationFile = [[ImplementationFile alloc] initWithName:@"ImplementationFile"];
    [compositefolder addFile:fileHeaderFile];
    [compositefolder addFile:fileImplementationFile];
    [compositefolder addFile:fileSystemHeaderFile];
    [compositefolder addFile:folderHeaderFile];
    [compositefolder addFile:folderImplementationFile];
    [compositefolder addFile:headerFileHeaderFile];
    [compositefolder addFile:headerFileImplementationFile];
    [compositefolder addFile:implementationFileHeaderFile];
    [compositefolder addFile:implementationFileImplementationFile];
    [folder displayWithHierarchy:0];
    
    
    
    
    
    
    
    
    Composite *root = [[Composite alloc] MyInit:@"root"];
    [root Add:[[Leaf alloc] MyInit:@"Leaf A"]];
    [root Add:[[Leaf alloc] MyInit:@"Leaf B"]];
    
    Composite *comp = [[Composite alloc] MyInit:@"Composite X"];
    [comp Add:[[Leaf alloc]MyInit:@"Leaf XA"]];
    [comp Add:[[Leaf alloc]MyInit:@"Leaf XB"]];
    [root Add:comp];
    
    
    Composite *comp2 = [[Composite alloc] MyInit:@"Composite XY"];
    [comp2 Add:[[Leaf alloc] MyInit:@"Leaf XYA"]];
    [comp2 Add:[[Leaf alloc] MyInit:@"Leaf XYB"]];
    [comp Add:comp2];
    
    [root Add:[[Leaf alloc] MyInit:@"Leaf C"]];
    Leaf *leaf = [[Leaf alloc] MyInit:@"Leaf D"];
    
    [root Add:leaf];
    [root Remove:leaf];
    [root Display:1];
    
    return 0;
}
