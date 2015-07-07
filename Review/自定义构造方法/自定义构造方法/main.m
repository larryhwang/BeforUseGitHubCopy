//
//  main.m
//  自定义构造方法
//
//  Created by Larry.Hwang on 15/5/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *Laowang = [[Person alloc] init_age_no:13 :45];   //用自己写的构造方法
        NSLog(@"%@",Laowang);  //输出对象   这里如果不写重载方法的话 只能输出地址  默认调用了description
    }
    return 0;
}
