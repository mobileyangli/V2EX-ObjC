//
//  V2OMainFormScrollMenuView.h
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface V2OMainFormScrollMenuView : UIView
@property(nonatomic, weak) IBOutlet UIScrollView *scrollView;

- (void)setupTagList:(NSArray*)tagArray;
@end
