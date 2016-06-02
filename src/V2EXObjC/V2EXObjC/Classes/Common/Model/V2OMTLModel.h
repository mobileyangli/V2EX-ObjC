//
//  V2OMTLModel.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface V2OMTLModel : MTLModel <MTLJSONSerializing>
+ (NSDateFormatter*)dateFormatter;
@end
