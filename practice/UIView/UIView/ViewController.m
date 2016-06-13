//
//  ViewController.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "tableView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //xibをstoryboardに追加する
    //調査した中で一番簡潔であった
    
    UINib *nib = [UINib nibWithNibName:@"tableView" bundle:nil];
    [nib instantiateWithOwner:self options:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (void)copyText:(NSString*) label
{
    NSLog(@"%@", label);
}
*/
 
@end
