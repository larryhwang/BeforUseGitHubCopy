//
//  main.m
//  category
//
//  Created by Larry.Hwang on 15/6/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student+test.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu=[[Student alloc] init];
        [stu test];
        NSLog(@"Hello, World!");
    }
    return 0;
}
