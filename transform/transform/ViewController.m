//
//  ViewController.m
//  transform
//
//  Created by Larry.Hwang on 15/6/5.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *headImageView;

@end

@implementation ViewController

//transform属性

-(IBAction) move:(UIButton * ) button {
     //MakeTranMakeTranslation 是基于初始位置的只做一次位移
    
   // self.headImageView.transform =(CGAffineTransformMakeTranslation(0, -100));
    
    //另一种方式  基于累计位移的
    self.headImageView.transform =CGAffineTransformTranslate(self.headImageView.transform, 0, -20);
}


  //旋转
-(IBAction)ronate:(id)sender {
    [UIView beginAnimations:nil  context:nil];   //add action video
    [UIView setAnimationDuration:1.0];   // time lasting
    
    self.headImageView.transform =CGAffineTransformRotate(self.headImageView.transform, M_PI_4);
    
    
}

-(IBAction)zoom:(UIButton *)button {
    
    [UIView beginAnimations:nil  context:nil];   //add action video
    [UIView setAnimationDuration:1.0];   // time lasting
    
    self.headImageView.transform=CGAffineTransformScale(self.headImageView.transform,1.2, 1.2);   // 1.2 X original size
    
    [UIView commitAnimations];
}

@end
