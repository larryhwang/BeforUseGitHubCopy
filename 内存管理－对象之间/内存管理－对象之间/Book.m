//
//  Book.m
//  内存管理－对象之间
//
//  Created by Larry.Hwang on 15/5/31.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Book.h"

@implementation Book


-(id)init_book:(float)newprice{
    _price=newprice;
    return self;
}

-(void) dealloc {
    NSLog(@"book:%f 被销毁了",_price);
    [super dealloc];
}

@end
