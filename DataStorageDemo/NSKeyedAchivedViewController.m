//
//  NSKeyedAchivedViewController.m
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import "NSKeyedAchivedViewController.h"
#import "DataObject.h"
@interface NSKeyedAchivedViewController ()
- (IBAction)dataAchived:(id)sender;

- (IBAction)dataUnAchived:(id)sender;


@end

@implementation NSKeyedAchivedViewController
{
    NSString *path;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dataAchived:(id)sender {
    
    DataObject *dataObj = [[DataObject alloc] init];
    dataObj.name = @"小崔";
    dataObj.sex = @"girl";
    
    NSString *cacheDir = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    path = [NSString stringWithFormat:@"%@/data.db",cacheDir];
    [NSKeyedArchiver archiveRootObject:dataObj toFile:path];
}

- (IBAction)dataUnAchived:(id)sender {
    
    DataObject *data =(DataObject*)[NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    NSLog(@"name:%@    sex:%@",data.name, data.sex);
}
@end
