//
//  ViewControllerHandle.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import "ViewControllerHandle.h"
#import "ViewController.h"

@interface ViewControllerHndle () 

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

}

- (void)View2Action
{
    
}


- (void)View3Action
{
        
}


@end

