//
//  MBProgressHUD+ISR.m
//  iDoctorSR
//
//  Created by 杨冬凌 on 16/5/16.
//  Copyright © 2016年 yangli. All rights reserved.
//

#import "MBProgressHUD+ISR.h"
#import "objc/runtime.h"

@implementation MBProgressHUD (ISR)
@dynamic hudType;
- (HUDType)hudType {
    NSNumber* type = objc_getAssociatedObject(self, (__bridge void*)self);
    return [type integerValue];
}
- (void)setHudType:(HUDType)hudType {
    NSNumber* type = @(hudType);
    objc_setAssociatedObject(self, (__bridge void*)self, type, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
