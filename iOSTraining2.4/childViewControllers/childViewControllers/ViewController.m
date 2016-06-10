//
//  ViewController.m
//  childViewControllers
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

-(NSUInteger)supportedInterfaceOrientations
{
    NSLog(@"rotate support on ios6");
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscape;
}

static CGRect const kPortraitYellowViewRect = { { 32.0f, 185.0f }, { 150.0f, 150.0f } };
static CGRect const kLandscapeYellowViewRect = { { 185.0f, 32.0f }, { 150.0f, 150.0f } };


// [2] view の描画
-(void)viewWillLayoutSubviews
{
    NSLog(@"will layout subviews");
}

// [3] 回転前処理
-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                               duration:(NSTimeInterval)duration
{
    NSLog(@"will rotate");
}

// [4] 回転する場合任意のアニメーションをここで設定
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                        duration:(NSTimeInterval)duration
{
    NSLog(@"will animate");
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
            [_container setFrame:kPortraitYellowViewRect];
    } else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight
               || toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft)
    {
                [_container setFrame:kLandscapeYellowViewRect];
    }
}

// [5] 回転完了処理
-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    NSLog(@"did rotate");
}

@end
