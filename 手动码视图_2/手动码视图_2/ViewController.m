//
//  ViewController.m
//  手动码视图_2
//
//  Created by Larry.Hwang on 15/6/6.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIButton *btn =[[UIButton alloc] init ];
    btn.frame=CGRectMake(0, 0, 50, 50);
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
}


@end
