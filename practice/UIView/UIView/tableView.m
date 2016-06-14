//
//  tableView.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "tableView.h"


@interface tableView ()
@end


@implementation tableView

//delegateを宣言しておく
@synthesize delegate;

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

- (void)call
{
    [delegate showlog];
}

/*
- (IBAction)push:(id)sender {
    //参照先がメソッドの実装をしているか判定
    if([self.delegate respondsToSelector:@selector(delegateTest)]) {
        [self.delegate delegateTest];
    }
    
}
 */
@end
