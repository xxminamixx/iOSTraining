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

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    _label1_copy = _label1.text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
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



- (IBAction)view2:(id)sender {
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];
   }

- (IBAction)view3:(id)sender {
    
    // ストーリーボードを指定する
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    // 遷移先のViewControllerをStoryBoardをもとに作成
    ViewControllerHndle *handle = [storyboard instantiateViewControllerWithIdentifier:@"View3"];
    
    // 画面をPUSHで遷移させる
    [self.navigationController pushViewController:handle animated:YES];

  }
@end
