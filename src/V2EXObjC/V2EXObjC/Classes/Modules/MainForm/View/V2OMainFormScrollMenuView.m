//
//  V2OMainFormScrollMenuView.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMainFormScrollMenuView.h"
#import "V2OTag.h"

static float const kButton_Width = 100;

@interface V2OMainFormScrollMenuView ()
@property (weak, nonatomic) IBOutlet UIView* contentView;
@end

@implementation V2OMainFormScrollMenuView

- (void)awakeFromNib {
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    [self addSubview:self.contentView];

    self.backgroundColor = [UIColor redColor];
    self.scrollView.backgroundColor = [UIColor yellowColor];
//    UILabel* lbl = [UILabel new];
//    lbl.frame = CGRectMake(0, 0, 100, 30);
//    lbl.text = @"test";
//    lbl.backgroundColor = [UIColor greenColor];
////    [self.scrollView addSubview:lbl];
//    [self.contentView addSubview:lbl];
}

- (void)setupTagList:(NSArray*)tagArray {
    self.scrollView.contentSize = CGSizeMake(kButton_Width * tagArray.count, self.scrollView.bounds.size.height);

    [tagArray enumerateObjectsUsingBlock:^(V2OTag* obj, NSUInteger idx, BOOL* _Nonnull stop) {
        UIButton* btn = [UIButton new];
        [btn setTitle:obj.chineseName forState:UIControlStateNormal];
        btn.frame = CGRectMake(kButton_Width * idx, 0, kButton_Width, self.scrollView.bounds.size.height);
        [self.scrollView addSubview:btn];
        btn.backgroundColor = [UIColor blueColor];
        
        UILabel* lbl = [UILabel new];
        lbl.frame = CGRectMake(0, 0, 100, 30);
        lbl.text = @"test";
        lbl.backgroundColor = [UIColor greenColor];
        [self.scrollView addSubview:lbl];
    }];
}

@end
