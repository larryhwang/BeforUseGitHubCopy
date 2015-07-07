//
//  main.c
//  static与变量
//
//  Created by Larry.Hwang on 15/4/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#include <stdio.h>
void test();
extern int a;
int main(int argc, const char * argv[]) {
    a=10;
    test();
    return 0;
}
int a;
