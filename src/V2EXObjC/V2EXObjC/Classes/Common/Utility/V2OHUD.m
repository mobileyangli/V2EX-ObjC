//
//  V2OHUD.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "MBProgressHUD+ISR.h"
#import "MBProgressHUD.h"
#import "V2OHUD.h"

@implementation V2OHUD

static MBProgressHUD* currentHUD = nil;
const static float HUD_DEBUG_HIDE_TIME = 3.0f;

+ (void)showHUDIndicator:(NSString*)message {
    if (currentHUD && ![currentHUD isHidden]) {
        // has another HUD is showing
        return;
    }

    UIView* rootView = [self getRootView];
    currentHUD = [MBProgressHUD showHUDAddedTo:rootView animated:YES];
    currentHUD.mode = MBProgressHUDModeIndeterminate;
    currentHUD.labelText = message;
    currentHUD.hudType = HUDTYPE_AlwaysShow;
}
+ (void)showHUDMessage:(NSString*)message detailMessage:(NSString*)detailMessage {
    if (currentHUD && ![currentHUD isHidden]) {
        // has another HUD is showing
        return;
    }

    UIView* rootView = [self getRootView];
    currentHUD = [MBProgressHUD showHUDAddedTo:rootView animated:YES];
    currentHUD.mode = MBProgressHUDModeText;
    currentHUD.labelText = message;
    currentHUD.hudType = HUDTYPE_DelayHide;
    if (detailMessage) {
        if (message == nil) {
            currentHUD.detailsLabelFont = currentHUD.labelFont;
        }
        currentHUD.detailsLabelText = detailMessage;
    }
#if DEBUG
    [currentHUD hide:YES afterDelay:HUD_DEBUG_HIDE_TIME];
#else
    [currentHUD hide:YES afterDelay:APP_DELAY_HUD_HIDE_TIME];
#endif
    currentHUD = nil;
}
+ (void)hideHUD {
    if (currentHUD && ![currentHUD isHidden] && currentHUD.hudType == HUDTYPE_AlwaysShow) {
        UIView* rootView = [self getRootView];
        if ([MBProgressHUD hideHUDForView:rootView animated:YES]) {
            currentHUD = nil;
        }
    }
}
+ (void)showSuccess:(NSString*)message {
    if (currentHUD && ![currentHUD isHidden]) {
        // has another HUD is showing
        return;
    }

    UIView* rootView = [self getRootView];
    currentHUD = [MBProgressHUD showHUDAddedTo:rootView animated:YES];
    currentHUD.mode = MBProgressHUDModeCustomView;
    currentHUD.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"37x-Checkmark.png"]];
    currentHUD.labelText = message;
    currentHUD.hudType = HUDTYPE_DelayHide;

#if DEBUG
    [currentHUD hide:YES afterDelay:HUD_DEBUG_HIDE_TIME];
#else
    [currentHUD hide:YES afterDelay:APP_DELAY_HUD_HIDE_TIME];
#endif
    currentHUD = nil;
}

#pragma mark - private

+ (UIView*)getRootView {
    static UIView* staticRootView = nil;
    if (staticRootView) {
        return staticRootView;
    }
    UIApplication* application = [UIApplication sharedApplication];
    UIWindow* window = application.keyWindow;
    staticRootView = [window.subviews firstObject];
    return staticRootView;
}

@end
