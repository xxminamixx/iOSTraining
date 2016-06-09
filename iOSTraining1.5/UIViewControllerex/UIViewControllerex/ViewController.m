//
//  ViewController.m
//  UIViewControllerex
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//ViewControllerのインスタンスは生成されているがViewのインスタンス生成は行われていない
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // 初期化のコードをここに記述する
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:NSStringFromClass([self class]) bundle:nibBundleOrNil];
    if (self) {
        // 初期化のコードをここに記述する
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 初期化のコードをここに記述する
    }
    return self;
}

//Viewの読み込みが終了すると呼ばれる
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//表示
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

//レイアウト調整
- (void)viewWillLayoutSubviews
{
    NSLog(@"viewWillLayoutSubviews");
    [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"viewDidLayoutSubviews");
    [super viewDidLayoutSubviews];
}
//非表示


- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDissAppear");
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDissappear");
    [super viewDidDisappear:animated];
}

//破棄
-(void)dealloc
{
    NSLog(@"dealloc");
}

@end
