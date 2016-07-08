//
//  V2OMainFormViewController.h
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "V2OMainFormScrollMenuView.h"

@interface V2OMainFormViewController : UIViewController
@property (nonatomic, weak) IBOutlet V2OMainFormScrollMenuView* menuScrollView;
@property (nonatomic, weak) IBOutlet UIScrollView* tableViewScrollView;
@end
