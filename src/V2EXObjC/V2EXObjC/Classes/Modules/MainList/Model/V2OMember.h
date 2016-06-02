//
//  V2OMember.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/3.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import "V2OMTLModel.h"

@interface V2OMember : V2OMTLModel
@property (nonatomic, copy) NSNumber* identifier;
@property (nonatomic, copy) NSString* username;
@property (nonatomic, copy) NSString* tagline;
@property (nonatomic, copy) NSString* avatarMini;
@property (nonatomic, copy) NSString* avatarNormal;
@property (nonatomic, copy) NSString* avatarLarge;
@end
