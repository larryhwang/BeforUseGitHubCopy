//
//  main.m
//  block 补充
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

int  sum(int a,int b ) {
    return a+b;
}

void test()  {
    
    typedef  int (^Sum)  (int,int);   //定义一个Block
    
    typedef  int  (*Sum_p)     (int,int);   // 定义指向函数的指针类型
    
    
    Sum sum1=^ (int a, int b ) {
        return  a+b;
    };
    
    NSLog(@"%i",sum1(8,2));
    
       //
    Sum_p  sum2=sum;
   NSLog(@"%i",(*sum2)  (9,7)) ;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
         test();

    }
    return 0;
}
