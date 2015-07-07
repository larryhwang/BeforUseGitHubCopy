//
//  main.m
//  OC_Hello World
//
//  Created by Larry.Hwang on 15/5/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stu =[[Student alloc] init];  //创建类对象
        
        [stu setAge:12 and_no:01];   //设置年龄和编号
    
        int age=[stu age];  //获取值
        int _no =[stu no];
        
        NSLog(@"age is %i,NO：%d",age,_no);   //输出值
    }
    return 0;
}
