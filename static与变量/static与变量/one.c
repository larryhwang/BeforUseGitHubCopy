//
//  one.c
//  static与变量
//
//  Created by Larry.Hwang on 15/4/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#include "one.h"

static int a=45; //如果没有赋值，默认是0
 void test () {
    printf("test被调用,a=%d",a);
    
}