//
//  ViewController.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame;
    frame.origin.x = 20;
    frame.origin.y = 100;
    frame.size.width = 200;
    frame.size.height = 50;
    
    //CGRect型を引数にとる
    UIView *uv = [[UIView alloc] initWithFrame:frame];
    // デフォルトでは透明なので配置されてもわからない。そこで適当な色を入れておく
    uv.backgroundColor = [UIColor blueColor];
    // viewを追加. self.viewはUIViewControllerのプロパティ
    [self.view addSubview:uv];

    //button作成
    UIButton *button1 = [UIButton new];
    button1.frame = CGRectMake(20.0, 180.0, 280.0, 30.0);
    
    //文字をセット
    [button1 setTitle:@"button" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor yellowColor];
    [button1 addTarget:self
                action:@selector(doActionButton:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: button1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doActionButton:(UIButton *)sender {
    
    NSLog(@"%@", sender.titleLabel.text);
    
}

@end
