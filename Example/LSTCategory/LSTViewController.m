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
//#import <NSArray+LSTArray.h>
//#import <UIImage+LSTImage.h>
//#import <YYModel.h>





@interface LSTViewController ()

/** <#.....#> */
@property (nonatomic,strong) UIView *testView;

@end

@implementation LSTViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.testView.frame = CGRectMake(10, 100, 50, 50);
    [self.view addSubview:self.testView];
    
    
  
    UIView *view1= [[UIView alloc] init];
    view1.backgroundColor = UIColor.yellowColor;
    
    view1.frame = CGRectMake(55, 90, 10, 50);
    [self.view addSubview:view1];
    
    
    UIView *view= [[UIView alloc] init];
    view.backgroundColor = UIColor.yellowColor;
    
    view.frame = CGRectMake(95, 90, 10, 50);
    [self.view addSubview:view];
    
    
   
    
    
  
    
    
   

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //CGRectMake(10, 100, 50, 50);
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    
    animation.keyPath = @"position";
    
    NSValue *value1=[NSValue valueWithCGPoint:CGPointMake(35, 125)];
    
    NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(200, 125)];
    NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(350, 125)];
    NSValue *value6=[NSValue valueWithCGPoint:CGPointMake(500, 125)];
    
    animation.values=@[value1,value2,value5,value6];
    
    animation.removedOnCompletion = NO;
    
    animation.fillMode = kCAFillModeForwards;
    
    animation.keyTimes = @[@(0),@(0.4),@(0.95),@(1.0)];
    animation.duration = 3;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    //           animation.delegate=self;
    
    [self.testView.layer addAnimation:animation forKey:nil];
    
    
    
    CABasicAnimation *baseAni = [CABasicAnimation animation];
    
    
    
    
//    [UIImage lst_DownLoadImageWithUrl:@"https://simg.s.weibo.com/20180201141807_searchtopimg750-350.jpg" succ:^(id image) {
//           
//       } fail:^{
//           
//       }];
}


- (void)testViewAction {
    
}

- (UIView *)testView {
    if(_testView) return _testView;
    _testView = [[UIView alloc] init];
    _testView.backgroundColor = UIColor.redColor;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(testViewAction)];
    
    [_testView addGestureRecognizer:tap];
    return _testView;
}


@end
