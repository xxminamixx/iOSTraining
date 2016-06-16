//
//  ViewController.m
//  KVO
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()
-(void)catch;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UINib *nib = [UINib nibWithNibName:@"ViewController2" bundle:nil];
    [nib instantiateWithOwner:self options:nil];
    
    //生成
    NSNotificationCenter *alert = [NSNotificationCenter defaultCenter];
    [alert addObserver:self selector:@selector(catch) name:@"chatch" object:nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)catch
{
    NSLog(@"catch");
}


@end
