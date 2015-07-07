//
//  Student.h
//  构造方法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    int _age;
    int _no;
}

- (void)setAge:(int)age;  //设置
- (int)age; //获得

-(void)setNo:(int)no;//设置
-(int)no;  //获得

//自己写一个构造方法
-(id)initWithAge:(int)age andNo:(int)no;

@end
