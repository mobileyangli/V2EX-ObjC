//
//  V2ONetworkHelper.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2ONetworkAPI.h"
#import "V2ONetworkResponse.h"
#import <Foundation/Foundation.h>
#import "V2ONetworkError.h"

typedef void (^V2ORequestSuccessBlock)(V2ONetworkResponse *response);
typedef void (^V2ORequestErrorBlock)(V2ONetworkError *networkError);
typedef void (^V2ORequestFinalyBlock)();

@interface V2ONetworkHelper : NSObject

@end
