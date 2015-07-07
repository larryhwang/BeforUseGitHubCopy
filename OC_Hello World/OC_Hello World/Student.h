//
//  Student.h
//  OC_Hello World
//
//  Created by Larry.Hwang on 15/5/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Student :NSObject  //默认的父类 :表示继承
{   //括号里的成员变量
    int age;
    int no;
}
 //这里都是声明  －表示动态 ＋表示静态

//age的取得方法
-(int)age;
-(int)no;
//age的set的方法
-(void)setAge:(int)newAge and_no:(int)newNo;

@end