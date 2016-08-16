//
//  V2OMainFormViewController.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMainFormViewController.h"
#import "V2OMainFormViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface V2OMainFormViewController ()
@property (nonatomic, assign) BOOL testAccept;
@property (nonatomic, strong) V2OMainFormViewModel* viewModel;
@end

@implementation V2OMainFormViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self applyBindings];
}
- (V2OMainFormViewModel*)viewModel {
    if (!_viewModel) {
        _viewModel = [V2OMainFormViewModel new];
    }
    return _viewModel;
}
- (void)applyBindings {
    @weakify(self);
    [RACObserve(self.viewModel, topTagArray) subscribeNext:^(NSArray* array) {
        @strongify(self);
        [self.menuScrollView setupTagList:array];
    }];
}

@end
