        //
//  V2OTableViewModel.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OTopic+Network.h"
#import "V2OTopicTableViewModel.h"

@implementation V2OTopicTableViewModel
- (void)loadHotTopicItems :(void (^)(BOOL, NSArray*))completeBlock {
    V2OTopic* topicModel = [V2OTopic new];

    [topicModel loadTopicItems:TopicListType_Tab boardName:@"hot" params:nil completeBlock:^(BOOL success, NSArray* items){
        completeBlock(success, items);
    }];
}
@end
