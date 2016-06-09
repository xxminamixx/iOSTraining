//
//  MixiSampleViewController.m
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiSampleViewController.h"
#import "ViewController.h"



@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_pinkOver setBackgroundColor:[UIColor redColor]];//色の操作
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)showView:(UIButton *)sender {
    NSLog(@"showview inner");
    [self.view addSubview:_sampleVC.view];
}

- (IBAction)hideView:(UIButton *)sender {
    NSLog(@"hideview inner");
    [_sampleVC.view removeFromSuperview];
}
@end
