//
//  V2OHUD.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface V2OHUD : NSObject
+ (void)showHUDIndicator:(NSString *)message;
+ (void)showHUDMessage:(NSString *)message detailMessage:(NSString *)detailMessage;
+ (void)hideHUD;
+ (void)showSuccess:(NSString *)message;
@end
