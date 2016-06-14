//
//  ViewController.m
//  custom
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
@property TableViewCell *tablecell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tablecell = [[TableViewCell alloc] initWithNibName:@"TableViewCell" bundle:nil];
    
    [self.view addSubview:_tablecell.view];

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
