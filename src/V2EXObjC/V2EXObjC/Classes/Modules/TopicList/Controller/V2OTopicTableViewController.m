//
//  V2OTableViewController.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OTopicTableViewController.h"
#import "V2OTopicTableViewModel.h"

@interface V2OTopicTableViewController () {
}
@property (nonatomic, strong) V2OTopicTableViewModel* tableViewModel;
@end

@implementation V2OTopicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableViewModel = [V2OTopicTableViewModel new];

    [self performSelector:@selector(loadDataItems) withObject:nil afterDelay:1.0f];
}

- (void)loadDataItems {
    [self.tableViewModel loadHotTopicItems:^(BOOL success, NSArray* items){

    }];
}

@end
