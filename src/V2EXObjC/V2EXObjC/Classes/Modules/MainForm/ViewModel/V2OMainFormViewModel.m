//
// Created by 杨力 on 16/7/9.
// Copyright (c) 2016 Yang Li. All rights reserved.
//

#import <MJExtension/MJExtension.h>
#import "V2OMainFormViewModel.h"
#import "V2OTag.h"

@interface V2OMainFormViewModel () {
    NSArray *_topTagArray;
}
@end


@implementation V2OMainFormViewModel
- (NSArray *)topTagArray {
    if (!_topTagArray) {
        NSArray *array = @[
                @{@"name" : @"tech", @"chineseName" : @"技术"},
                @{@"name" : @"creative", @"chineseName" : @"创意"},
                @{@"name" : @"play", @"chineseName" : @"好玩"},
                @{@"name" : @"apple", @"chineseName" : @"Apple"},
                @{@"name" : @"jobs", @"chineseName" : @"酷工作"},
                @{@"name" : @"deals", @"chineseName" : @"交易"},
                @{@"name" : @"city", @"chineseName" : @"城市"},
                @{@"name" : @"qna", @"chineseName" : @"问与答"},
                @{@"name" : @"hot", @"chineseName" : @"最热"},
                @{@"name" : @"all", @"chineseName" : @"全部"},
                @{@"name" : @"r2", @"chineseName" : @"R2"}
        ];

        _topTagArray = [V2OTag mj_objectArrayWithKeyValuesArray:array];
    }
    return _topTagArray;
}
@end