//
//  Person.h
//  点语法
//
//  Created by Larry.Hwang on 15/5/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int _age;
}
-(int)age;
-(void)setAge:(int)age;
@end
