//
//  LSTViewController.m
//  LSTCategory
//
//  Created by LoSenTrad on 08/05/2019.
//  Copyright (c) 2019 LoSenTrad. All rights reserved.
//

#import "LSTViewController.h"
#import <NSString+LSTString.h>
#import <NSObject+LSTObject.h>
#import <UIColor+LSTColor.h>
#import <UIView+LSTView.h>
#import <CALayer+LSTLayer.h>
#import <NSArray+LSTArray.h>
#import <UIImage+LSTImage.h>



@interface LSTViewController ()

@end

@implementation LSTViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"123";
    
    NSString *res = [str base64Encode];
    
   

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIImage lst_DownLoadImageWithUrl:@"https://simg.s.weibo.com/20180201141807_searchtopimg750-350.jpg" succ:^(id image) {
           
       } fail:^{
           
       }];
}



@end
