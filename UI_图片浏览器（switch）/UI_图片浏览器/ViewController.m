//
//  ViewController.m
//  UI_图片浏览器
//
//  Created by Larry.Hwang on 15/6/6.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
    1.定义属性
    2.创建属性对应的控件，添加到视图
 
 
 **/


//序号标签
@property (nonatomic , strong) UILabel *noLable;
//图片
@property (nonatomic,strong) UIImageView *icon;
//图片描述
@property(nonatomic,strong) UILabel *descLable;
//左边按钮
@property (nonatomic,strong) UIButton *leftButton;
//右边按钮
@property (nonatomic,strong)UIButton *rightButton;

/** 图像索引**/
@property(nonatomic,assign) int index;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        //实例化控件
    
    //1.序号标签
    UILabel *lable =[[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 40)];
    lable.text=@"1/5";
    lable.textAlignment=NSTextAlignmentCenter;  //让文本居中
    [self.view addSubview:lable];
   self.noLable=lable;
    
    // 2.图片视图
    CGFloat  imageW=200;
    CGFloat  imageX=60;
    CGFloat  imageH=200;
    CGFloat  imageY=80;
    
    //设置相框
    UIImageView *imageView =[[UIImageView alloc] initWithFrame:CGRectMake(imageX, imageY, imageW, imageH)];
    //设好图片
  UIImage *image =[UIImage imageNamed:@"biaoqingdi"];
 // 把相片放到相框里
 imageView.image=image;
    [self.view addSubview:imageView];
     self.icon=imageView;
    
    
    
    //3.文字描述
    UILabel *lable2 =[[UILabel alloc] initWithFrame:CGRectMake(0, 300, 320, 80)];
    lable2.text=@"神级表情帝";
    lable2.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable2];
    self.descLable=lable2;
    
    //4.左边的按钮
    UIButton *leftbutton =[[UIButton alloc] init];
   //    leftbutton.backgroundColor=[UIColor redColor];
    [leftbutton setBackgroundImage:[UIImage imageNamed:@"left_normal"]forState:UIControlStateNormal];
    [leftbutton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"]forState:UIControlStateHighlighted];
    leftbutton.frame=CGRectMake(0, 0, 40, 40);
    leftbutton.center=CGPointMake(self.icon.frame.origin.x/2,self.icon.frame.origin.y+self.icon.frame.size.height/2 );
    
    [self.view addSubview:leftbutton];
    
    [leftbutton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
     
    self.leftButton=leftbutton;
     
    
    //5.右边的按钮
    UIButton *rightbutton =[[UIButton alloc] init];
        //rightbutton.backgroundColor=[UIColor redColor];
    [rightbutton setBackgroundImage:[UIImage imageNamed:@"right_normal"]forState:UIControlStateNormal];
    [rightbutton setBackgroundImage:[UIImage imageNamed:@"right_highlighted"]forState:UIControlStateHighlighted];
    rightbutton.frame=CGRectMake(0, 0, 40, 40);
    rightbutton.center=CGPointMake(self.icon.frame.origin.x+self.icon.frame.size.width+self.leftButton.center.x,self.icon.frame.origin.y+self.icon.frame.size.height/2 );
    
    [self.view addSubview:rightbutton];
     
  [rightbutton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
     
    self.rightButton=rightbutton;
}
   
   
#pragma mark －ACTIONS 


-(void)change {
    

    NSLog(@"%d",self.index);
    self.noLable.text = [NSString stringWithFormat:@"%d/%d", self.index + 2, 5];   //这里不会发生累加
    
    NSLog(@"%d",self.index);
    switch (self.index) {
        case 0:
            self.icon.image = [UIImage imageNamed:@"biaoqingdi"];
            self.descLable.text = @"表情";
            break;
        case 1:
            self.icon.image = [UIImage imageNamed:@"bingli"];
            self.descLable.text = @"病例";
            break;
        case 2:
            self.icon.image = [UIImage imageNamed:@"chiniupa"];
            self.descLable.text = @"吃牛扒";
            break;
        case 3:
            self.icon.image = [UIImage imageNamed:@"danteng"];
            self.descLable.text = @"蛋疼";
            break;
        case 4:
            self.icon.image = [UIImage imageNamed:@"wangba"];
            self.descLable.text = @"王八";
            break;
    }
    
    self.leftButton.enabled=(self.index!=-1);
    self.rightButton.enabled=(self.index!=3);
    
}

   -(void)leftClick {
    self.index--;
     [self change];
     
     
   }

   -(void)rightClick {
      self.index++;
       [self change];
   }
   
@end
