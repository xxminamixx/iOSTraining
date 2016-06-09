//
//  ViewController.m
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MixiSampleViewController *sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    
    [self.view addSubview:sampleVC.view];
   // [sampleVC.pinkOver setBackgroundColor:[UIColor redColor]];

    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)createView:(UIButton *)sender {
    [self.view addSubview:sampleVC.view];

}

- (IBAction)deleteButton:(id)sender {
    [self.view addSubview:sampleVC.view];

}
@end
