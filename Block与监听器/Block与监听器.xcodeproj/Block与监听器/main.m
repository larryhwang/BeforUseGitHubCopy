//
//  main.m
//  Block与监听器
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"

typedef int (^MySum)  ( int, int);   //以后可以Mysum 随意定义 加减函数了

void  test( )  {
    
    //声明一个Block  实现加函数
    int (^Sum) (int,  int)  =^(int a , int b) {
        return a+b;
    };
    
    int a =Sum(10,11);
    NSLog(@"%i",a);
}


void  test2 ( )  {
    //又声明一个Block 实现减
  //  int  a=20;
    MySum sum_2= ^(int a,int b )     {  //声明了一个变量名
        NSLog(@"%i",a);   //可以访问外部的a，但不可以修改   除非加 __block 
        return a-b;
    };
    NSLog(@"第二个Block被调用了%i",sum_2(20,1));
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Button *btn =[[Button alloc] init] ;
        
        btn.block=^(Button *btn)  {
            NSLog(@"%@按钮被点击了",btn);
        };
        
        return 0;
}
    
}
