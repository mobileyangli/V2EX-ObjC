//
//  V2OMainFormViewModelSpec.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/9.
//  Copyright 2016年 Yang Li. All rights reserved.
//

#import "V2OMainFormViewModel.h"
#import "V2OTag.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(V2OMainFormViewModelSpec)

    describe(@"V2OMainFormViewModel", ^{
        __block V2OMainFormViewModel *viewModel = nil;

        beforeEach(^{
            viewModel = [V2OMainFormViewModel new];
        });

        afterEach(^{
            viewModel = nil;
        });

        context(@"MainForm view model初始化完成后", ^{
            it(@"能有主层次tag列表", ^{
                [viewModel.topTagArray shouldNotBeNil];
            });

            it(@"列表内共有11个tag", ^{
                [[@(viewModel.topTagArray.count) should] equal:@(11)];
            });

            it(@"枚举类型判断都是V2OTag类型, 分别校验对应数据", ^{
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

                __block BOOL result = YES;
                [viewModel.topTagArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                    BOOL resultA = [obj isKindOfClass:[V2OTag class]];

                    V2OTag *tag = obj;
                    BOOL resultB = [tag.name isEqualToString:array[idx][@"name"]];
                    BOOL resultC = [tag.chineseName isEqualToString:array[idx][@"chineseName"]];

                    result = resultA && resultB && resultC;
                    *stop = result;
                }];

                [[theValue(result) should] equal:theValue(YES)];
            });
        });
    });

SPEC_END
