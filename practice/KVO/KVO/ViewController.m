//
//  ViewController.m
//  KVO
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)push:(id)sender;
-(void)catch;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //生成
    NSNotificationCenter *alert = [NSNotificationCenter defaultCenter];
    [alert addObserver:self selector:@selector(catch) name:@"call" object:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender {
    // 通知を作成する
    NSNotification *n = [NSNotification notificationWithName:@"call" object:self];
    
    // 通知実行！
    [[NSNotificationCenter defaultCenter] postNotification:n];

}

-(void)catch
{
    NSLog(@"catch");
}


@end
