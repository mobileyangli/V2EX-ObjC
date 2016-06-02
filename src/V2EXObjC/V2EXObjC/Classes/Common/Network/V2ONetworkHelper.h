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
+ (V2ONetworkHelper *)sharedHelper;
/**
 *  Common Network API "GET" request helper
 *
 *  @param apiPath      const static string
 *  @param parameters   request parameter as dictionary
 *  @param modelClass   return data's "Data" value mapping ISRMTLModel class
 *  @param successBlock success block, will return response object
 *  @param errorBlock   error block, the common error (exp. network unreach) will handle by helper self, user will handle error logic function
 *  @param finalyBlock  finaly logic block for clean up context, like try/catch/finaly
 */
- (void)getUrl:(NSString *)apiPath parameters:(NSDictionary *)parameters modelOfClass:(Class)modelClass successBlock:(V2ORequestSuccessBlock)successBlock errorBlock:(V2ORequestErrorBlock)errorBlock finallyBlock:(V2ORequestFinalyBlock)finalyBlock;
/**
 *  Common Network API "POST" request helper
 *
 *  @param apiPath      const static string
 *  @param parameters   request parameter as dictionary
 *  @param modelClass   return data's "Data" value mapping ISRMTLModel class
 *  @param successBlock success block, will return response object
 *  @param errorBlock   error block, the common error (exp. network unreach) will handle by helper self, user will handle error logic function
 *  @param finalyBlock  finaly logic block for clean up context, like try/catch/finaly
 */
- (void)postUrl:(NSString *)apiPath parameters:(NSDictionary *)parameters modelOfClass:(Class)modelClass successBlock:(V2ORequestSuccessBlock)successBlock errorBlock:(V2ORequestErrorBlock)errorBlock finallyBlock:(V2ORequestFinalyBlock)finalyBlock;

@end
