//
//  ViewController.m
//  NSNotificationCenter
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
    
    // 配達員のインスタンス
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    // お手紙を作成する
    NSNotification *n = [NSNotification notificationWithName:@"letter" object:self];
    
    // 配達
    [nc postNotification:n];
    
    [nc addObserver:self selector:@selector(hoge) name:@"letter" object:nil];
}

// 通知を受けるhogeメソッド
-(void)hoge{
    NSLog(@"get a letter");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

}
@end
