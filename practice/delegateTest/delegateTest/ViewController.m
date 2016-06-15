//
//  ViewController.m
//  delegateTest
//
//  Created by Minami Kyohei on 2016/06/15.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()<delegateTest>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestViewController *testdel = [TestViewController new];
    testdel.delegate = self;
    [testdel call:@"デリゲートを介しています"];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) callCatch:(NSString *)str
{
    NSLog(@"%@", str);
}

@end
