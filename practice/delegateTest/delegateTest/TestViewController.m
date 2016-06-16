//
//  TestViewController.m
//  delegateTest
//
//  Created by Minami Kyohei on 2016/06/15.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "TestViewController.h"



@interface TestViewController ()
@end


@implementation TestViewController

@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//4.デリゲートメソッドの呼び出しを定義
- (void)call:(NSString *)str;
{
     NSLog(@"デリゲードメソッドを呼びます");
    if ([self.delegate respondsToSelector:@selector(callCatch:)]){
        [self.delegate callCatch:str];
    }
    NSLog(@"呼び終えました");
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
