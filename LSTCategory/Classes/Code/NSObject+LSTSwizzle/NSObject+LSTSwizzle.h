//
//  NSObject+LSTSwizzle.h
//  LSTCategory
//
//  Created by LoSenTrad on 2020/7/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LSTSwizzle)



/// 类方法交换
/// @param cls 类
/// @param originSelector 原方法
/// @param swizzleSelector 需要交换的方法
void LTSSwizzleClassMethod(Class cls, SEL originSelector, SEL swizzleSelector);
    

/// 实例方法交换
/// @param cls 实例
/// @param originSelector 原方法
/// @param swizzleSelector 需要交换的方法
void LSTSwizzleInstanceMethod(Class cls, SEL originSelector, SEL swizzleSelector);

@end

NS_ASSUME_NONNULL_END
