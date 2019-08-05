//
//  UIView+LSTView.h
//  KitNote
//
//  Created by LoSenTrad on 2018/5/30.
//  Copyright © 2018年 LoSenTrad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (QTFrame)

/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat x;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat y;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat width;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat height;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat centerX;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat centerY;
/** 获取/设置view的x坐标 */
@property (nonatomic, assign) CGFloat top;
/** 获取/设置view的左边坐标 */
@property (nonatomic, assign) CGFloat left;
/** 获取/设置view的底部坐标Y */
@property (nonatomic, assign) CGFloat bottom;
/** 获取/设置view的右边坐标 */
@property (nonatomic, assign) CGFloat right;
/** 获取/设置view的size */
@property (nonatomic, assign) CGSize size;


/** 屏幕大小 */
CGSize LSTScreenSize();
/** 屏幕宽度 */
CGFloat LSTScreenWidth();
/** 屏幕高度 */
CGFloat LSTScreenHeight();
/** 屏幕bounds */
CGRect LSTScreenBounds();
/** 获取相对屏幕的宽度 */
CGFloat LSTAutoWidth(CGFloat width);
/** 获取相对屏幕的高度 */
CGFloat LSTAutoHeight(CGFloat height);
/** 获取相对指定view的宽度 */
CGFloat LSTAutoWidthForView(CGFloat width,UIView *tagView);
/** 获取相对指定view的高度 */
CGFloat LSTAutoHeightForView(CGFloat height,UIView *tagView);

static inline CGSize QTSizeMake(CGFloat width, CGFloat height);
static inline CGPoint QTPointMake(CGFloat x, CGFloat y);
static inline CGRect QTRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height);

/** 是否是苹果X */
BOOL lst_IsIphoneX();
/** 是否是苹果XR */
BOOL lst_IsIphoneXR();
/** 是否是苹果XS */
BOOL lst_IsIphoneXS();
/** 是否是苹果XS_Max */
BOOL lst_IsIphoneXS_Max();
/** 是否是苹果X系列(刘海屏系列) */
BOOL lst_IsIphoneX_ALL();
/** 状态栏高度 X:44 非X:20 */
CGFloat LSTStatusBarHeight();
/** 导航栏高度 X:88 非X:64 */
CGFloat LSTNavBarHeight();
/** 底部导航栏高度 X:83 非X:49 */
CGFloat LSTTabBarHeight();
/** 状态栏高度 X:34 非X:0 */
CGFloat LSTTabBarBottomMargin();
/** 底部贴边控件高度 */
CGFloat LSTBottomHemViewHeight(CGFloat height);
/** 底部控件下间距 (间距小于20使用) */
CGFloat LSTBottomHemViewMargin(CGFloat margin);





/** 根据nib文件转UIView对象 */
+ (instancetype)getNibView:(NSString *)nibName;
- (void)lst_RoundCorners:(UIRectCorner)corners radius:(CGFloat)radius;
/** 截屏生成图片 */
- (nullable UIImage *)lst_SnapshotImage;

- (UIViewController *)getCurrVc;

@end
