//
//  ViewController.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerHandle.h"

@interface ViewController ()

- (IBAction)view1:(id)sender;
- (IBAction)view2:(id)sender;
- (IBAction)view3:(id)sender;
@property ViewControllerHndle *handle;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)view1:(id)sender {
    if ([self.delegate respondsToSelector:@selector(View1Action)]) {
        NSLog(@"デリゲートメソッドを呼んでいます");
        [self.delegate View2Action];
    }
}

- (IBAction)view2:(id)sender {
    if ([self.delegate respondsToSelector:@selector(View2Action)]) {
        NSLog(@"デリゲートメソッドを呼んでいます");
        [self.delegate View2Action];
    }
}

- (IBAction)view3:(id)sender {
    if ([self.delegate respondsToSelector:@selector(View3Action)]) {
        NSLog(@"デリゲートメソッドを呼んでいます");
        [self.delegate View3Action];
    }
}
@end
