//
//  V2ONetworkResponse.h
//  V2EXObjC
//
//  Created by 杨冬凌 on 16/6/2.
//  Copyright © 2016年 Yang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface V2ONetworkResponse : NSObject

@property(nonatomic, readonly) id rawData;
@property(nonatomic, readonly) NSArray *datas;

@end
