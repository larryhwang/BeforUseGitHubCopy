//
//  Button.h
//  @protool
//
//  Created by Larry.Hwang on 15/6/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Button ;

@protocol   ButtonDelegate  <NSObject>    //定义了一个名为ButtonDelegate的协议

-(void) onClick: (Button *) btn;   //协议里声明了一个函数,要求遵循这个协议的监听类要被实现这个方法


@end



@interface Button : NSObject

@property (nonatomic,retain) id<ButtonDelegate> delegate;

//Button类的一个成员变量(对象)是delegate,表示遵循这个协议的名字

-(void)click;
@end





