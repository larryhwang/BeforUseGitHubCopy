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
//图像列表
@property(nonatomic,strong) NSArray *imagelist;

@end

@implementation ViewController


//运用懒加载，被需要才被实例化
-(NSArray *) imagelist {
    if (_imagelist==nil) {   //是空才执行
        NSDictionary  *dic1=@{@"name":@"biaoqingdi",@"desc":@"表情"};
        NSDictionary  *dic2=@{@"name":@"bingli",@"desc":@"病例"};
        NSDictionary  *dic3=@{@"name":@"chiniupa",@"desc":@"吃牛排"};
        NSDictionary  *dic4=@{@"name":@"danteng",@"desc":@"蛋疼"};
        NSDictionary  *dic5=@{@"name":@"wangba",@"desc":@"王八"};
       _imagelist=@[dic1,dic2,dic3,dic4,dic5];    //已定义
    }
        return _imagelist;
}



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
 self.icon=imageView;    //这里被注释会出问题
    
    
    
    //3.文字描述
    UILabel *lable2 =[[UILabel alloc] initWithFrame:CGRectMake(0, 300, 320, 80)];
 lable2.text=@"神级表情帝";
    lable2.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable2];
 self.descLable=lable2;
    
    //4.左边的按钮
    UIButton *leftbutton =[[UIButton alloc] init];
    [leftbutton setBackgroundImage:[UIImage imageNamed:@"left_normal"]forState:UIControlStateNormal];
    [leftbutton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"]forState:UIControlStateHighlighted];
    leftbutton.frame=CGRectMake(0, 0, 40, 40);
    leftbutton.center=CGPointMake(self.icon.frame.origin.x/2,self.icon.frame.origin.y+self.icon.frame.size.height/2 );
    
    [self.view addSubview:leftbutton];
    
    [leftbutton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
     
    self.leftButton=leftbutton;
    
    //5.右边的按钮
    UIButton *rightbutton =[[UIButton alloc] init];
    [rightbutton setBackgroundImage:[UIImage imageNamed:@"right_normal"]forState:UIControlStateNormal];
    [rightbutton setBackgroundImage:[UIImage imageNamed:@"right_highlighted"]forState:UIControlStateHighlighted];
    rightbutton.frame=CGRectMake(0, 0, 40, 40);
    rightbutton.center=CGPointMake(self.icon.frame.origin.x+self.icon.frame.size.width+self.leftButton.center.x,self.icon.frame.origin.y+self.icon.frame.size.height/2 );
    
    [self.view addSubview:rightbutton];
     //注入监听
     [rightbutton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    self.rightButton=rightbutton;
    [self change];  //把第一张图片显示出来，还有标签号
}


#pragma mark －ACTIONS


-(void)change {
   
    //顶头、描述标签
    self.noLable.text = [NSString stringWithFormat:@"%d/%d", self.index + 1, 5];
    self.icon.image =[UIImage imageNamed:self.imagelist[self.index][@"name"]];     //imagelist第一次被实例化
    self.descLable.text=self.imagelist[self.index][@"desc"];
   
    self.leftButton.enabled=(self.index!=0);
    self.rightButton.enabled=(self.index!=4);
    

}

   -(void)leftClick {
        self.index--;
       [self change];
       NSLog(@"fuck");
   }

   -(void)rightClick {
         self.index++;
          [self change];
          NSLog(@"fuck");
   }
   
@end
