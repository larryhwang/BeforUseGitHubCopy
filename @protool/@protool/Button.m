//
//  Button.m
//  @protool
//
//  Created by Larry.Hwang on 15/6/1.
//  Copyright (c) 2015年 Larry.Hwang. All rights reserved.
//

#import "Button.h"

@implementation Button

-(void)click {
    [_delegate onClick:self];    //因为它遵循了那个协议，所以可以用ButtonListener里面的方法
}

@end
