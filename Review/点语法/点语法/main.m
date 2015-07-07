//
//  main.m
//  点语法
//
//  Created by Larry.Hwang on 15/5/29.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Stuent.m"  //重复导入会出现错误
#import "Stuent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stuent *laowang =[[Stuent alloc] init]; //创建类对象
        laowang.bbb=100;
        int age=laowang.bbb;
        NSLog(@"age is %i",age);
    }
    return 0;
}


