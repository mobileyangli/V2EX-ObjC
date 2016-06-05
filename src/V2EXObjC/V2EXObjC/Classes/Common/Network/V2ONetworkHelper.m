//
//  V2ONetworkHelper.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OHUD.h"
#import "V2ONetworkHelper.h"
#import <AFNetworking/AFNetworking.h>

@interface V2ONetworkHelper () {
    AFNetworkReachabilityStatus networkReachablilityStatus;
}

@end

@implementation V2ONetworkHelper
+ (V2ONetworkHelper*)sharedHelper {
    static V2ONetworkHelper* sharedHelperInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHelperInstance = [V2ONetworkHelper new];

        [sharedHelperInstance startMonitoringNetworkStatus];
    });

    return sharedHelperInstance;
}

- (void)getUrl:(NSString*)apiPath parameters:(NSDictionary*)parameters modelOfClass:(Class)modelClass successBlock:(V2ORequestSuccessBlock)successBlock errorBlock:(V2ORequestErrorBlock)errorBlock finallyBlock:(V2ORequestFinalyBlock)finalyBlock {

    [self httpMethod:@"GET" apiPath:apiPath parameters:parameters modelOfClass:modelClass successBlock:successBlock errorBlock:errorBlock finallyBlock:finalyBlock];
}
- (void)postUrl:(NSString*)apiPath parameters:(NSDictionary*)parameters modelOfClass:(Class)modelClass successBlock:(V2ORequestSuccessBlock)successBlock errorBlock:(V2ORequestErrorBlock)errorBlock finallyBlock:(V2ORequestFinalyBlock)finalyBlock {

    [self httpMethod:@"POST" apiPath:apiPath parameters:parameters modelOfClass:modelClass successBlock:successBlock errorBlock:errorBlock finallyBlock:finalyBlock];
}

- (void)httpMethod:(NSString*)method apiPath:(NSString*)apiPath parameters:(NSDictionary*)parameters modelOfClass:(Class)modelClass successBlock:(V2ORequestSuccessBlock)successBlock errorBlock:(V2ORequestErrorBlock)errorBlock finallyBlock:(V2ORequestFinalyBlock)finalyBlock {

    if ([self checkNetworkNotReachable]) {
        [V2OHUD hideHUD];
        [V2OHUD showHUDMessage:NSLocalizedString(@"error_network_title", nil) detailMessage:NSLocalizedString(@"error_network_not_reachable", nil)];

        V2ONetworkError* error = [V2ONetworkError new];
        error.isNetworkNotReachable = YES;
        errorBlock(error);
        finalyBlock();
        return;
    }

    NSString* fullPath = [NSString stringWithFormat:@"%@%@", NETWORK_API_BaseURLString, apiPath];

    NSURLSessionConfiguration* configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager* manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL* url = [NSURL URLWithString:fullPath];
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = [method uppercaseString];

    NSURLSessionDataTask* dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse* _Nonnull response, id _Nullable responseObject, NSError* _Nullable error) {
#if DEBUG
        NSLog(@"%@", response);
#endif

        if (error) {
            errorBlock(nil);
        } else {
            V2ONetworkResponse* response = [[V2ONetworkResponse alloc] initWithRawData:responseObject modelOfClass:modelClass];
            successBlock(response);
        }
        finalyBlock();
    }];

    [dataTask resume];
}
#pragma mark - private method

- (BOOL)checkNetworkNotReachable {
    return networkReachablilityStatus <= AFNetworkReachabilityStatusNotReachable;
}
- (void)startMonitoringNetworkStatus {
    AFNetworkReachabilityManager* afNetworkReachabilityManager = [AFNetworkReachabilityManager sharedManager];
    [afNetworkReachabilityManager startMonitoring];

    [afNetworkReachabilityManager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        networkReachablilityStatus = status;
    }];
}
@end
