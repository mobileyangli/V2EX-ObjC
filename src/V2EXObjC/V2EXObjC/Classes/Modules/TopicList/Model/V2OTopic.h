//
//  V2OTopic.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMember.h"
#import "V2ONode.h"

@interface V2OTopic : NSObject
@property (nonatomic, copy) NSNumber* identifier;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* url;
@property (nonatomic, copy) NSString* content;
@property (nonatomic, copy) NSString* contentRendered;
//@property (nonatomic, copy) V2OMember* member;
//@property (nonatomic, copy) V2ONode* node;
@property (nonatomic, copy) NSDate* created;
@property (nonatomic, copy) NSDate* lastModified;
@property (nonatomic, copy) NSDate* lastTouched;
@end
