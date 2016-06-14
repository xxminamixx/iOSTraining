//
//  ViewController.m
//  NSFileManager
//
//  Created by Minami Kyohei on 2016/06/14.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *urls = [fileManager URLsForDirectory:NSDocumentDirectory
                                        inDomains:NSUserDomainMask];
    NSLog(@"%@", urls[0]);
    
    NSString *documentURLString = [(NSURL*)urls[0] absoluteString];
    NSURL *fileURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@save.xml", documentURLString]];
    NSLog(@"%@", fileURL);
    
    NSDictionary *savedDict = @{@"key1":@"value1", @"key2":@"value2"};
    [savedDict writeToURL:fileURL atomically:YES];
    
    if([fileManager fileExistsAtPath:fileURL.path]){ //[1] ファイルパスが存在するかどうかを確認
        NSDictionary *readDict = [NSDictionary dictionaryWithContentsOfURL:fileURL]; //[2] 保存したファイルを dictionary として生成
        NSLog(@"%@", readDict);
    }else{
        NSLog(@"not exist");
    }
    
    if([fileManager fileExistsAtPath:fileURL.path]){
        NSError *error = nil;
        [fileManager removeItemAtURL:fileURL error:&error];
    }else{
        NSLog(@"not exist");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
