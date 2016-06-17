//
//  CustomViewController.m
//  CustomView
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "CustomViewController.h"
#import "OriginViewController.h"

@interface CustomViewController ()
- (IBAction)action1:(id)sender;
- (IBAction)action2:(id)sender;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)action1:(id)sender {
    OriginViewController *oView = [CustomViewController new];
    [oView setLabel1:@"日本"];
}

- (IBAction)action2:(id)sender {
}
@end
