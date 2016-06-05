//
//  V2OTopic.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OTopic.h"
#import "MTLValueTransformer.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

@implementation V2OTopic
+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    NSMutableDictionary* keyPathsDict = [[super JSONKeyPathsByPropertyKey] mutableCopy];

    [keyPathsDict setValue:@"content_rendered" forKey:@"contentRendered"];
    [keyPathsDict setValue:@"last_modified" forKey:@"lastModified"];
    [keyPathsDict setValue:@"last_touched" forKey:@"lastTouched"];

    return [NSDictionary dictionaryWithDictionary:keyPathsDict];
}
//+(NSValueTransformer*)lastModifiedJSONTransformer {
//    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSNumber* value, BOOL *success, NSError *__autoreleasing *error) {
//        [NSDate]
//    } reverseBlock:^id(id value, BOOL *success, NSError *__autoreleasing *error) {
//        
//    }]
//}
@end
