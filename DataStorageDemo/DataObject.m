//
//  DataObject.m
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import "DataObject.h"

@implementation DataObject

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
}
- (id)initWithCoder:(NSCoder *)aDecoder
{

    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
    }
    return self;
}

@end
