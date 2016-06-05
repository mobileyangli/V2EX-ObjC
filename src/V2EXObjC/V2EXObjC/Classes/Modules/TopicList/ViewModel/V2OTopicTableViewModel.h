//
//  V2OTableViewModel.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface V2OTopicTableViewModel : NSObject
- (void)loadHotTopicItems:(void (^)(BOOL success, NSArray* items))completeBlock;
@end
