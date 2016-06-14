//
//  ViewController.m
//  Block
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

    
    void (^b)(int); //int型の引数bを取るブロックを宣言
    b = ^void(int a){ NSLog(@"%d", a); }; //ブロックを代入
    b(100); //代入したブロックを利用する
    
    BOOL (^bltest)(int, int);
    bltest = ^BOOL(int x, int y){ return x < y; };
    NSLog(@"%d",  bltest(200,400)); // BOOL型のトークンわからない

    
    void (^print) (NSString *);
    print = ^void (NSString *str) { NSLog(@"%@", str); };
    print(@"日本");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
