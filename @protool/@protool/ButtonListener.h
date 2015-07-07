//
//  ButtonListener.h
//  @protool
//
//  Created by Larry.Hwang on 15/6/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ButtonDelegate;



@interface ButtonListener : NSObject <ButtonDelegate>   //定义了一个遵循这个协议的监听类

@end
