//
//  FMDBViewController.m
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import "FMDBViewController.h"
#import "PSBDataBaseManager.h"
@interface FMDBViewController ()

@end

@implementation FMDBViewController
{
    PSBDataBaseManager * _DBManager;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)test:(id)sender {
    
    [PSBDataBaseManager test];
}


@end
