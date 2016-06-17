//
//  ViewControllerHandle.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import "ViewControllerHandle.h"
#import "ViewController.h"

@interface ViewControllerHndle () <pushButton>

@end

@implementation ViewControllerHndle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //通知もとのインスタンスのデリゲートに自身をセット
    ViewController *view = [ViewController new];
    view.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - ViewController delegate method
- (void)View1Action
{
    NSLog(@"デリゲードメソッドが呼ばれました");
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];
    
}

- (void)View2Action
{
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];
    
}


- (void)View3Action
{
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View3"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];
    
}


@end

