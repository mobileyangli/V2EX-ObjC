//
//  V2OMainFormScrollMenuViewSpec.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/9.
//  Copyright 2016年 Yang Li. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "V2OMainFormScrollMenuView.h"
#import "V2OMainFormViewModel.h"


SPEC_BEGIN(V2OMainFormScrollMenuViewSpec)

    describe(@"V2OMainFormScrollMenuView", ^{
        __block V2OMainFormScrollMenuView *scrollMenuView = nil;

        beforeEach(^{
            scrollMenuView = [V2OMainFormScrollMenuView new];
            [[NSBundle mainBundle] loadNibNamed:@"V2OMainFormScrollMenuView" owner:scrollMenuView options:nil];
        });

        afterEach(^{
            scrollMenuView = nil;
        });

        context(@"init finish", ^{
            it(@"要有scrollView", ^{
                [scrollMenuView.scrollView shouldNotBeNil];
            });

            it(@"要创建了11个主tag列表", ^{
                V2OMainFormViewModel*viewModel=[V2OMainFormViewModel new];
                [scrollMenuView setupTagList:viewModel.topTagArray];

                [[theValue(scrollMenuView.scrollView.subviews.count) should] equal:theValue(11)];
            });
        });
    });

SPEC_END
