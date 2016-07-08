//
//  V2ONode.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "MJExtension.h"

@interface V2ONode : NSObject
@property (nonatomic, copy) NSNumber* identifier;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* titleAlternative;
@property (nonatomic, copy) NSString* url;
@property (nonatomic, copy) NSNumber* topics;
@property (nonatomic, copy) NSString* avatarMini;
@property (nonatomic, copy) NSString* avatarNormal;
@property (nonatomic, copy) NSString* avatarLarge;
@end
