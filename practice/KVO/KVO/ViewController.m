//
//  ViewController.m
//  KVO
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNotificationCenter *alert;
    [alert addObserver:self  // [1] 監視者
               forKeyPath:@"label" // [2] 監視対象のキー値
                  options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) // [3] オプションの指定
                  context:nil]; //[4] 任意のオブジェクトを指定
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    NSLog(@"%@", change);
}

@end
