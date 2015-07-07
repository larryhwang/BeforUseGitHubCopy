//
//  Student.m
//  内存管理－对象之间
//
//  Created by Larry.Hwang on 15/5/31.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Student.h"

@implementation Student


#pragma mark - 生命周期函数

#pragma mark 构造
-(id)init_age:(int)newage{  //重构构造函数
    _age=newage;
    return self;
}

#pragma mark 析构
-(void)dealloc {  //重构销毁函数
    
    [self.book release];
    NSLog(@"Student:%i 被销毁了",_age);
    
    [super dealloc];
}

#pragma mark Book重新构造
-(void)setBook:(Book *)book {
   if( _book!=book)  {     //如果相等就不执行构造函数了 
         [  _book release ];      //先释放旧的成员变量
        _book=[book retain];
   }
    NSLog(@"retain is used");
}

-(Book *) book {
    return _book;
}


#pragma mark - 公共方法
#pragma mark 读书

-(void)readbook {
    NSLog(@"我读的书是%f元",_book.price);
}


@end
