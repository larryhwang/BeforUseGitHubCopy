//
//  main.m
//  构造方法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu =[[Student alloc] initWithAge:13 andNo:2];
       NSLog(@"%@",stu);
    }
    return 0;
}
