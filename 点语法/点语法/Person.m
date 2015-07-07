//
//  Person.m
//  点语法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Person.h"

@implementation Person :NSObject

-(int)age {
    return _age;
}

-(void)setAge:(int)newAge {
    _age=newAge;
}

@end
