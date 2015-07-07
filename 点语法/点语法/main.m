//
//  main.m
//  点语法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *zhangsan =[[Person alloc] init];
        
        zhangsan.age=10;
        
        int a =zhangsan.age;
        
        NSLog(@"This is %i",a);
    }
    return 0;
}
