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
        //获取文件路径 para1: 文件名  para2: 文件类型
        NSString *path=[[NSBundle mainBundle]pathForResource:@"ImageData" ofType:@"plist"];
        _imagelist=[NSArray arrayWithContentsOfFile:path];
    }
        return _imagelist;
}

// 懒加载序号标签
-(UILabel *) noLable {
    if (!_noLable) {
    _noLable =[[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 40)];
    _noLable.textAlignment=NSTextAlignmentCenter;  //让文本居中
    [self.view addSubview:_noLable];
    }
    return _noLable;
}


//懒加载 图片视图
-(UIImageView *) icon {
    if(!_icon) {
        CGFloat  imageW=200;
        CGFloat  imageX=60;
        CGFloat  imageH=200;
        CGFloat  imageY=80;
        _icon=[[UIImageView alloc] initWithFrame:CGRectMake(imageX, imageY, imageW, imageH)];
         [self.view addSubview:_icon];
    }
    return  _icon;
}


//懒加载  文字描述
-(UILabel *) descLable {
    if(!_descLable) {
        _descLable =[[UILabel alloc] initWithFrame:CGRectMake(0, 300, 320, 180)];
        _descLable.numberOfLines=0;
        _descLable.textAlignment=NSTextAlignmentCenter;
        [self.view addSubview:_descLable];
    }
    return _descLable;
}


//懒加载 左边按钮

-(UIButton *) leftButton {
    if (!_leftButton) {
        _leftButton =[[UIButton alloc] init];
        [_leftButton setBackgroundImage:[UIImage imageNamed:@"left_normal"]forState:UIControlStateNormal];
        [_leftButton setBackgroundImage:[UIImage imageNamed:@"left_highlighted"]forState:UIControlStateHighlighted];
       _leftButton.frame=CGRectMake(0, 0, 40, 40);
       _leftButton.center=CGPointMake(self.icon.frame.origin.x/2,self.icon.frame.origin.y+self.icon.frame.size.height/2 );
        [self.view addSubview:_leftButton];
        [_leftButton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return  _leftButton;
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    

    
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
    [self change];  //把第一张图片显示出来，还有标签号/实例化很多属性
}


#pragma mark －ACTIONS


-(void)change {
   
    //顶头、描述标签
    self.noLable.text = [NSString stringWithFormat:@"%d/%d", self.index + 1, 5];
    self.icon.image =[UIImage imageNamed:self.imagelist[self.index][@"name"]];     //imagelist第一次被实例化
    self.descLable.text=self.imagelist[self.index][@"desc"];
   
    self.leftButton.enabled=(self.index!=0);     //这里实例化了leftButton
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
