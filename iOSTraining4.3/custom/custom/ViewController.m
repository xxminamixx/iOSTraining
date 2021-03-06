//
//  ViewController.m
//  custom
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "BoyTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property TableViewCell *tableCell;
@property BoyTableViewCell *boyCell;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //ViewControllerのViewにTableViewCellを登録
    UINib *girlnib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableView registerNib:girlnib forCellReuseIdentifier:@"girl"];
    
    UINib *boynib = [UINib nibWithNibName:@"BoyTableViewCell" bundle:nil];
    [self.tableView registerNib:boynib forCellReuseIdentifier:@"boy"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//必須メソッド
//tableViewのcellの数を返す
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //100cell用意
    return 100;
}

//tableViewに表示するcellを返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //書き慣れない
    //NSString *identifer = indexPath.row % 2 == 0 ? @"girl" : @"boy";
  
    //簡単に表示分ける方法は？
    //indexPath.row始まりは0?
    
    if (indexPath.row % 2 == 0) {
        BoyTableViewCell *boycell = [BoyTableViewCell new];
        boycell = [tableView dequeueReusableCellWithIdentifier:@"boy"];
        boycell.boyLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
        return boycell;
    } else {
        TableViewCell *girlcell = [TableViewCell new];
        girlcell = [tableView dequeueReusableCellWithIdentifier:@"girl"];
        girlcell.girlLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
        return girlcell;
    }
     
    
    //TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    //return  cell;
}

//tableViewのcellの高さを返す
-(CGFloat) tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
  
    return 125;
}

//セルがタップされたときの処理
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@", indexPath);
}

@end
