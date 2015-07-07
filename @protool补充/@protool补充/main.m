//
//  main.m
//  @protool补充
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student  *stu =[[Student alloc ]  init ];
        
        if([stu conformsToProtocol:@protocol(Study)])     //判断是否遵守了某个协议
            NSLog(@"stu 已经遵循了Study 协议");
    }
    return 0;
}
