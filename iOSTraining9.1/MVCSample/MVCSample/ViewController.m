//
//  ViewController.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerHndle.h"

@interface ViewController ()
- (IBAction)view1:(id)sender;
- (IBAction)view2:(id)sender;
- (IBAction)view3:(id)sender;
//@property ViewControllerHndle *handle;
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
   
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryBoard" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];
    
    
    /*
    ViewControllerHndle *handle = [ViewControllerHndle new];
   [self presentViewController: handle animated:YES completion: nil];
    */
}

- (IBAction)view2:(id)sender {
}

- (IBAction)view3:(id)sender {
}
@end
