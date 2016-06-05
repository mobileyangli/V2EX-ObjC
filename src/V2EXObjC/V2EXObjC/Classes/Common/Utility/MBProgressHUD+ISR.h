//
//  MBProgressHUD+ISR.h
//  iDoctorSR
//
//  Created by 杨冬凌 on 16/5/16.
//  Copyright © 2016年 yangli rights reserved.
//

#import "MBProgressHUD.h"

typedef enum : NSUInteger {
    HUDTYPE_AlwaysShow,
    HUDTYPE_DelayHide,
} HUDType;

@interface MBProgressHUD (ISR)
@property (nonatomic, assign) HUDType hudType;
@end
