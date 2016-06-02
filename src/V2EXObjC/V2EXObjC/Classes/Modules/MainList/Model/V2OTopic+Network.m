//
//  V2OTopic+Network.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2ONetworkHelper.h"
#import "V2OTopic+Network.h"

@implementation V2OTopic (Network)
- (void)loadHotTopicItems:(void (^)(BOOL success, NSArray* items))completeBlock {
    [[V2ONetworkHelper sharedHelper] getUrl:NETWORK_API_TOPIC_HOT parameters:nil modelOfClass:[self class]
        successBlock:^(V2ONetworkResponse* responseObject) {
            completeBlock(YES, responseObject.datas);
        }
        errorBlock:^(V2ONetworkError* networkError) {
            completeBlock(NO, nil);
        }
        finallyBlock:^{
            [V2OHUD hideHUD];
        }];
}
@end
