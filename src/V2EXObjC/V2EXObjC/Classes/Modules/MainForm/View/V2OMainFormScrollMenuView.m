//
//  V2OMainFormScrollMenuView.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMainFormScrollMenuView.h"

@interface V2OMainFormScrollMenuView ()
@property (nonatomic, weak) IBOutlet UIScrollView* scrollView;
@end

@implementation V2OMainFormScrollMenuView

- (void)awakeFromNib
{
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    [self addSubview:self.scrollView];

    self.backgroundColor = [UIColor redColor];
    self.scrollView.backgroundColor = [UIColor yellowColor];
}



@end
