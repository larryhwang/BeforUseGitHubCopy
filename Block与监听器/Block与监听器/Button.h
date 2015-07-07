//
//  Button.h
//  Block与监听器
//
//  Created by Larry.Hwang on 15/6/2.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Button;

typedef void  (^ButtonBlock)  (Button *btn);   //Button是某种类型了

@interface Button : NSObject

@property  (nonatomic ,assign) ButtonBlock block;   //没有＊号

-(void) click;

@end
