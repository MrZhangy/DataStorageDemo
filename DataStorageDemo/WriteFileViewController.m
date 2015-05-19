//
//  WriteFileViewController.m
//  DataStorageDemo
//
//  Created by zhangyafeng on 15/5/18.
//  Copyright (c) 2015年 think. All rights reserved.
//

#import "WriteFileViewController.h"

@interface WriteFileViewController ()
- (IBAction)writeImage:(id)sender;
- (IBAction)readFile:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation WriteFileViewController
{
    NSString *filePath;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSString *sandBoxPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
     filePath = [NSString stringWithFormat:@"%@/1.png",sandBoxPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)writeImage:(id)sender {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDir;
    if(![fileManager fileExistsAtPath:filePath isDirectory:&isDir])
    {
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://h.hiphotos.baidu.com/image/pic/item/ac345982b2b7d0a2ab6ef529ceef76094a369adb.jpg"]];
        bool suc = [data writeToFile:filePath atomically:YES];
        if (!suc) {
            NSLog(@"写入失败");
        }

    }
}

- (IBAction)readFile:(id)sender {
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    [self.imageView setImage:[UIImage imageWithData:data]];
    
}
@end
