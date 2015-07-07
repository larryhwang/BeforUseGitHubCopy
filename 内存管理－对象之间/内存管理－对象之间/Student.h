//
//  Student.h
//  内存管理－对象之间
//
//  Created by Larry.Hwang on 15/5/31.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"


@interface Student : NSObject  {
     Book * _book;
}

@property int age;

-(id)init_age:(int)newage;  //构造方法重构

-(void)setBook:(Book *)book;
-(Book *) book;
-(void)readbook;



@end
