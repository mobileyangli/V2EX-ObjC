//
//  V2ONetworkResponse.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2ONetworkResponse.h"

@implementation V2ONetworkResponse
- (instancetype)init {
    return nil;
}
- (instancetype)initWithRawData:(id)rawData modelOfClass:(Class)modelClass {
    self = [super init];
    if (self) {
        _rawData = rawData;
        if (modelClass) {
//            _datas = [MTLJSONAdapter modelsOfClass:modelClass fromJSONArray:rawData error:nil];
        }
    }
    return self;
}

@end
