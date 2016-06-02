//
//  V2OMTLModel.m
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMTLModel.h"

@implementation V2OMTLModel
+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:[self class]];
}
+ (NSDateFormatter*)dateFormatter {
    static NSDateFormatter* dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [NSDateFormatter new];
        dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    }
    return dateFormatter;
}
@end
