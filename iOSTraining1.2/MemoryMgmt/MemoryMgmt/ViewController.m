//
//  ViewController.m
//  MemoryMgmt
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "MixiChildObject.h"
#import "MixiChildObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // MixiParentObject インスタンスへの強参照を parentObj が所持
    MixiParentObject *parentObj = [[MixiParentObject alloc] init];
    
    // MixiChildObject インスタンスへの強参照を childObj が所持
    MixiChildObject *childObj = [[MixiChildObject alloc] init];
    
    // MixiParentObject インスタンスのインスタンス変数が childObj への強参照を保持
    parentObj.obj[0] = childObj;
    // MixiChildObject インスタンスのインスタンス変数が parentObj への強参照を保持
    childObj.obj = parentObj;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
