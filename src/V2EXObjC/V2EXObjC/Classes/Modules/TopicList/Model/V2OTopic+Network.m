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

- (NSString*)getUrlByTopicListType:(TopicListType)listType boardName:(NSString*)boardName {
    NSString* url;
    switch (listType) {
    case TopicListType_Go:
        url = [NSString stringWithFormat:@"%@go/%@", NETWORK_API_ROOT, boardName];
        break;
    case TopicListType_Tab:
        url = [NSString stringWithFormat:@"%@api/topics/%@", NETWORK_API_ROOT, boardName];
        break;
    default:
        break;
    }
    return url;
}
- (void)loadTopicItems:(TopicListType)listType boardName:(NSString*)boardName params:(NSDictionary*)params completeBlock:(void (^)(BOOL success, NSArray* items))completeBlock {
    NSString* pathUrl = [self getUrlByTopicListType:listType boardName:boardName];

    [[V2ONetworkHelper sharedHelper] getUrl:pathUrl parameters:params modelOfClass:[self class]
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
