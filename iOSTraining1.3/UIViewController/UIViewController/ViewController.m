//
//  ViewController.m
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    
    [self.view addSubview:_sampleVC.view];
    
    //独自に追加
    [self.view addSubview: _showButton];
    [self.view addSubview: _hideButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showView:(id)sender {
    
    [self.view addSubview:_sampleVC.view];
    [self.view addSubview: _showButton];
    [self.view addSubview: _hideButton];
}

- (IBAction)hideView:(id)sender {
    [_sampleVC.view removeFromSuperview];
}
@end
