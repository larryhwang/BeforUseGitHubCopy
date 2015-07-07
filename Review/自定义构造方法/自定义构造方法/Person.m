//
//  Person.m
//  自定义构造方法
//
//  Created by Larry.Hwang on 15/5/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Person.h"

@implementation Person

-(int)age {
    return _age;
}

-(int)no {
    return _no;
}

-(void)setAge:(int)new_age {
    _age=new_age;
}

-(void)setNo:(int)new_no {
    _no=new_no;
}

//自己写的一个构造方法
-(id)init_age_no:(int)new_age :(int)new_no {
    if(self=[super init]) {
        _age=new_age;
        _no=new_no;
    }
    return self;
}

-(NSString *) description {
    NSString *str=[NSString stringWithFormat:@"Laowang age is %i and no is %i",self.age,self.no];
    return  str;
}

@end
