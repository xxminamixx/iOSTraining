//
//  ViewController.m
//  mixiSample
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"
#import "NSString+HogeAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MixiSampleClass *sample = [MixiSampleClass new];
    sample.name = @"minami";
    NSLog(@"name is %@", sample.name);
    
    [[sample name] addHoge];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
