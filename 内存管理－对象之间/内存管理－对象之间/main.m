//
//  main.m
//  内存管理－对象之间
//
//  Created by Larry.Hwang on 15/5/30.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"

void test(Student *stu) {
    NSLog(@"我今年%d岁",stu.age);
    Book *book1=[[Book alloc] init_book:3.5];
    Book *book2=[[Book alloc]init_book:4.5];
    NSLog(@"book2_count is %zi",[book2 retainCount]);
    stu.book=book1;  //计数器加一

    stu.book=book1;
    
    stu.book=book2;      //这里更改了，Laowang实例的_book属性， 从book1变为book2了  所以释放时也是释放book2   所以在创建时就应该释放上一个对象
    NSLog(@"book1_count is %zi",[book1 retainCount]);
    NSLog(@"book2_count is %zi",[book2 retainCount]);  //2
  
    [book1 release];  //释放book1对象，计数器变为1
}

void test2(Student *stu) {
      [stu readbook];
      [stu.book release];   //这里的内存释放在Student里搞定
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       Student *Laowang = [[Student alloc] init_age:10];
       
        test(Laowang);
        test2(Laowang);
      
        [Laowang release];  //谁创建，谁释放  这里还释放了Student里面book成员变量
     // Laowang.book=book1;
     //  NSLog(@"我今年%d岁,我买了一本%f块钱的书",Laowang.age,Laowang.book.price);
        
     //   [Laowang release];  //Laowang内存释放
     //  [book1 release];   //book1内存释放
    }
    return 0;
}
