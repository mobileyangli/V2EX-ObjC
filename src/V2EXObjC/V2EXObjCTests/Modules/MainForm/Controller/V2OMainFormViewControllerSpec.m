//
//  V2OMainFormViewControllerSpec.m
//  V2EXObjC
//
//  Created by 杨力 on 16/7/8.
//  Copyright 2016年 Yang Li. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "V2OMainFormViewController.h"


SPEC_BEGIN(V2OMainFormViewControllerSpec)

    describe(@"V2OMainFormViewController", ^{
        __block V2OMainFormViewController *controller = nil;

        beforeEach(^{
            controller = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"V2OMainFormViewController"];
            [controller view];
        });

        afterEach(^{
            controller = nil;
        });

        context(@"outlet", ^{
            it(@"should be connected", ^{
                [[controller menuScrollView] shouldNotBeNil];
                [[controller tableViewScrollView] shouldNotBeNil];
                // given

                // when

                // then
            });
        });
    });

SPEC_END
