//
//  Study.h
//  @protool补充
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Study <NSObject>
// required 是默认的
@required    //表示test 必须实现   编译器实际不会抱错
-(void) test;


@optional   // 表示可选实现这个方法
-(void) test1;


-(void) test2;

-(void) test3;
@end
