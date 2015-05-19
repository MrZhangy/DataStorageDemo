//
//  DataObject.h
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataObject : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy) NSString *sex;

@end
