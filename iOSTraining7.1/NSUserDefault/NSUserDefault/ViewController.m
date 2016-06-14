//
//  ViewController.m
//  NSUserDefault
//
//  Created by Minami Kyohei on 2016/06/14.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *array = [NSMutableArray new];
    NSArray *leng = @[@"日本", @"アメリカ", @"フランス"];
    array = [leng mutableCopy];
    
    //配列情報を保持
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:@"array"];
    
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"array"]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
