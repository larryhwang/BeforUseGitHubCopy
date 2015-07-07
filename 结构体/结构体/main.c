//
//  main.c
//  结构体
//
//  Created by Larry.Hwang on 15/5/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    struct Student {
        int age;
        char *name;
        float height;
    };
    
    
    struct Student stu={12,"Bell",1.7f};
    
    printf("年龄是=%d", stu.age);
    return 0;
}
