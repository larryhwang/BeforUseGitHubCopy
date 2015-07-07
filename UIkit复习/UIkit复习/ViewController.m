//
//  ViewController.m
//  UIkit复习
//
//  Created by Larry.Hwang on 15/6/3.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
    //将监听方法，注册到 “运行循环” 当按钮被点击后 “运行循环” 通知视图控制器
    // 来执行@selector的方法
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];

  //  UITextField *textfiled =[[UITextField alloc] initWithFrame:CGRectMake(20,20, 280,40)];
}

-(void) click: (UIButton *)btn {
    NSLog(@"%s","Hello , Fucker ! ");
    [btn removeTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

//代理已经在控件中用剪头画过去了
//下面实现   协议  预定义一些方法名  每个方法定义不事件  但不具体实现  留给 其他类遵循后实现它
#pragma mark -文本框的处理方法   限制器字符串的长度


-(BOOL) textField: (UITextField *)textField  shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string   {
    
    NSLog(@"%@ %@",NSStringFromRange(range),string);
    return YES;
}




@end
