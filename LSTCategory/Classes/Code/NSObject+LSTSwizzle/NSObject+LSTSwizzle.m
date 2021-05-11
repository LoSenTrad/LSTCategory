//
//  NSObject+LSTSwizzle.m
//  LSTCategory
//
//  Created by LoSenTrad on 2020/7/27.
//

#import "NSObject+LSTSwizzle.h"
#import <objc/runtime.h>

@implementation NSObject (LSTSwizzle)


void LSTSwizzleClassMethod(Class cls, SEL originSelector, SEL swizzleSelector){
    if (!cls) {
        return;
    }
    Method originalMethod = class_getClassMethod(cls, originSelector);
    Method swizzledMethod = class_getClassMethod(cls, swizzleSelector);
    
    Class metacls = objc_getMetaClass(NSStringFromClass(cls).UTF8String);
    
    BOOL isAdd = class_addMethod(metacls,originSelector,
                                 method_getImplementation(swizzledMethod),
                                 method_getTypeEncoding(swizzledMethod));
    if (isAdd) {
        
        class_replaceMethod(metacls,
                            swizzleSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
        
    } else {
        
        class_replaceMethod(metacls,
                            swizzleSelector,
                            class_replaceMethod(metacls,
                                                originSelector,
                                                method_getImplementation(swizzledMethod),
                                                method_getTypeEncoding(swizzledMethod)),
                            method_getTypeEncoding(originalMethod));
    }
}

void LSTSwizzleInstanceMethod(Class cls, SEL originSelector, SEL swizzleSelector){
    if (!cls) {
        return;
    }
    Method originalMethod = class_getInstanceMethod(cls, originSelector);
    Method swizzledMethod = class_getInstanceMethod(cls, swizzleSelector);
    
    BOOL isAdd = class_addMethod(cls, originSelector,
                                 method_getImplementation(swizzledMethod),
                                 method_getTypeEncoding(swizzledMethod));
    if (isAdd) {
        class_replaceMethod(cls,swizzleSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
        
    } else {
        class_replaceMethod(cls,swizzleSelector,
                            class_replaceMethod(cls, originSelector,
                                                method_getImplementation(swizzledMethod),
                                                method_getTypeEncoding(swizzledMethod)),
                            method_getTypeEncoding(originalMethod));
    }
}


@end
