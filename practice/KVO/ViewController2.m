//
//  ViewController2.m
//  KVO
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
- (IBAction)call:(id)sender;
@end

@implementation ViewController2

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

- (IBAction)call:(id)sender {
    
    // 通知を作成する
    NSNotification *n = [NSNotification notificationWithName:@"catch" object:self];
    
    // 通知実行！
    [[NSNotificationCenter defaultCenter] postNotification:n];

}
@end
