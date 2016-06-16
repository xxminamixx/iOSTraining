//
//  ViewController.m
//  delegateTest
//
//  Created by Minami Kyohei on 2016/06/15.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()<delegateTest> //1.プロトコルに従う
- (IBAction)push:(id)sender;

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

- (IBAction)push:(id)sender {
    
    //2.デリゲードインスタンスに自身をセット
    TestViewController *testdel = [TestViewController new];
    testdel.delegate = self;
    [testdel call:@"デリゲートを介しています"];

}

// 3.デリゲードメソッドの実装
- (void) callCatch:(NSString *)str
{
    NSLog(@"%@", str);
}

//必須メソッド
//tableViewのcellの数を返す
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

//tableViewに表示するcellを返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = @"Apple";
    return cell;
}

//tableViewのcellの高さを返す
-(CGFloat) tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
    
    return 150;
}

//セルがタップされたときの処理
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%@", indexPath);
    //2.デリゲードインスタンスに自身をセット
    TestViewController *testdel = [TestViewController new];
    testdel.delegate = self;
    [testdel call:@"セルをタップしました"];

}
@end
