//
//  main.m
//  foudation框架结构1
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct Date   {
            int  year ;
            int month;
            int day;
        };
        
        struct Date d ={2013,4,5};
        d.day=12;
        printf("%i",d.day);
        
    }
    return 0;
}
