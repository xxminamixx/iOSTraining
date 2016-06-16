//
//  ViewController.m
//  NSUserDefaults
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)save:(id)sender;
- (IBAction)load:(id)sender;
@property NSUserDefaults *userdefaults;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _userdefaults =[NSUserDefaults new];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSString *str = @"保存したデータです";
    _userdefaults =[NSUserDefaults new];
    [_userdefaults setObject:str forKey:@"save"];
}

- (IBAction)load:(id)sender {
    NSLog(@"%@",[_userdefaults stringForKey:@"save"]);
}
@end
