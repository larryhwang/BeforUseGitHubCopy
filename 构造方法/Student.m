//
//  Student.m
//  构造方法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)setAge:(int)age {
    _age=age;
}

-(void)setNo:(int)no{
    _no=no;
}

-(int)age {
    return _age;
}

-(int)no{
    return _no;
}

-(id)initWithAge:(int)age andNo:(int)no {
    if(self=[super init]) {
        _age=age;
        _no=no;
    }
    return self;
}

-(NSString *)description {

 NSString *str =[NSString stringWithFormat:@"age is %i and no is %i",self.age,self.no];
   return str;
}

@end
