//
//  ViewController.m
//  ALAssetsLibrary
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface ViewController ()
@property (nonatomic, strong) ALAssetsLibrary *assetsLibrary;
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _assetsLibrary = [ALAssetsLibrary new];
    
    [_assetsLibrary enumerateGroupsWithTypes:ALAssetsGroupAll
                                  usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
                                      NSLog(@"AssetsGroup : %@", group);
                                  } failureBlock:^(NSError *error) {
                                      // iPhone の設定で写真アクセスを拒否している場合
                                  }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
