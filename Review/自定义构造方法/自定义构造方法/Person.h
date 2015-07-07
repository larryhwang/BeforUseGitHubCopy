//
//  Person.h
//  自定义构造方法
//
//  Created by Larry.Hwang on 15/5/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject  {
    int _no;
    int _age;
}

-(int)age;
-(void)setAge:(int)new_age;

-(int)no;
-(void)setNo:(int)new_no;

-(id)init_age_no:(int)new_age :(int)new_no;

@end
