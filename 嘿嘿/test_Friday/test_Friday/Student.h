//
//  Student.h
//  test_Friday
//
//  Created by Larry.Hwang on 15/5/29.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
     int Age;
     int No;
}


//定义方法，不用在这里实现
-(int)GetAge;
-(int)GetNo;
-(void)SetAge:(int)newAge and_no:(int)newNo;


@end
