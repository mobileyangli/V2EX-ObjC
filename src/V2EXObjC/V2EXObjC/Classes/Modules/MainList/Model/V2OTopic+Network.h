//
//  V2OTopic+Network.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OTopic.h"

@interface V2OTopic (Network)
- (void)loadHotTopicItems:(void (^)(BOOL success, NSArray* items))completeBlock;
@end
