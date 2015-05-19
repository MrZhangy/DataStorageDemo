//
//  NSUserDefaultViewController.m
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import "NSUserDefaultViewController.h"

@interface NSUserDefaultViewController ()
- (IBAction)writeData:(id)sender;

- (IBAction)readData:(id)sender;
@end

@implementation NSUserDefaultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)writeData:(id)sender {
    NSArray *dataArray = @[@"aaaa",@"bbbb",@"cccc"];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:dataArray forKey:@"dataArray"];
    [userDefaults synchronize];
}

- (IBAction)readData:(id)sender {
     NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
     NSArray *dataArray = [userDefaults objectForKey:@"dataArray"];
    NSLog(@"%@",dataArray);
}
@end
