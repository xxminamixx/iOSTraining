//
//  ViewControllerHandle.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import "ViewControllerHandle.h"
#import "ViewController.h"

@interface ViewControllerHndle ()
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewControllerHndle



- (void)viewDidLoad {
    [super viewDidLoad];
    //通知もとのインスタンスのデリゲートに自身をセッ
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *load = [defaults stringForKey:@"memory"];
    _label2.text = load;
    



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

