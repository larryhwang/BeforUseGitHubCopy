//
//  main.m
//  @protool
//
//  Created by Larry.Hwang on 15/6/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "ButtonListener.h"
#import "MyListener.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //初始化按钮
        Button *button =[[Button alloc] init ] ;
        Button *button2=[[Button alloc] init];
        
        //初始化一个按钮的监听器
    //ButtonListener *listener =[[ButtonListener alloc] init];
        
        //初始化另外一个监听器,可以监听几个按钮类
        MyListener  *listener2 =[[MyListener alloc] init] ;
        //设置按钮的监听器
        
        button.delegate= listener2 ;
        button2.delegate= listener2 ;
        
        //点击按钮
        [button click];
        [button2 click];
        
    }
    return 0;
}
