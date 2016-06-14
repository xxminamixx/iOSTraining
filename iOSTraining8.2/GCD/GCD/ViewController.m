//
//  ViewController.m
//  GCD
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
    // Do any additional setup after loading the view, typically from a nib.
    /*
    for (NSInteger i = 0 ; i < 100; ++i) {
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_sync(queue, ^{
            NSLog(@"%ld", (long)i);
        });
    }
    
    NSLog(@"here!!");
     */
    
    dispatch_group_t group = dispatch_group_create(); // 1. dispatch group の生成
    
    for (NSInteger i = 0 ; i < 100; ++i) {
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        
        // 2. タスクをdispatch_queue に追加
        dispatch_group_async(group, queue, ^{
            NSLog(@"%ld", (long)i);
        });
        
    }
    
    // 3. タスクの終了まで待機
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    
    NSLog(@"here!!");
    
    // 4. 不要になったgroupをrelease
    //dispatch_release(group);　//この部分でエラー
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
