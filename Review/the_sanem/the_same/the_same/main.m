//
//  main.m
//  the_same
//
//  Created by Larry.Hwang on 15/5/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person=[[Person alloc] init];
        //person.age=10;
        person.age=100;
        int age=person.age;
        NSLog(@"age is %i",age);
        NSLog(@"Hello, World!");
    }
    return 0;
}
