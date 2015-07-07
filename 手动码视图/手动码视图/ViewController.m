//
//  ViewController.m
//  手动码视图
//
//  Created by Larry.Hwang on 15/6/6.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *headImageView;
//@property (weak, nonatomic) IBOutlet UIButton *headImageView2;

@end

@implementation ViewController

-(void)click {
    NSLog(@"fuck");
}

- (void)viewDidLoad
{
     [super viewDidLoad];
    
    UIButton *headImageView=[[UIButton alloc] init];
    UIButton *headImageView2=[[UIButton alloc] init];
    
 UIButton *btn =[[UIButton alloc] init ];
   btn.frame =CGRectMake(50, 50, 100, 100);
   btn.backgroundColor = [UIColor blueColor];

  //  UIImage  *image=[UIImage imageNamed:@"btn_01"];
  //  UIImage  *image2=[UIImage imageNamed:@"btn_02"];

//    [btn setBackgroundImage:image forState:UIControlStateNormal];
  //  [btn setBackgroundImage:image2 forState:UIControlStateHighlighted];
    
  //  [self.view addSubview:btn];
    
    //加入监听方法
 // [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
     headImageView.frame=CGRectMake(50, 50, 100, 100);
     headImageView.backgroundColor =[UIColor redColor];
      self.headImageView=btn;
     [self.view addSubview:headImageView];
 
    //    self.headImageView=btn;
    
 //   self.headImageView2.frame=CGRectMake(50, 50, 50,50);
//    self.headImageView2=btn;
   
    
   
 //   [self.view addSubview:_headImageView2];
    



}
@end
