//
//  ViewController.m
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerHandle.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@end

@implementation ViewController

- (void)setStr:(NSString *)text
{
    self.label1_copy = text;
}

- (NSString *)getStr
{
    return self.label1_copy;
}

// javaのコンストラクタのようなもの
- (id) init
{
    NSLog(@"初期化します");
    _label1_copy = @"Hello";
    return self;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"このメソッドは画面遷移前に呼ばれます");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _label1_copy = @"Hello";
    _label1.text = _label1_copy;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)view1:(id)sender {
    [self performSegueWithIdentifier:@"view1Segue" sender:self];
    [self.delegate View1Action];
}

@end
