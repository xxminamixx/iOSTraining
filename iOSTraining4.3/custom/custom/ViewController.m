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
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property TableViewCell *tableCell;
@property TableViewCell *tableCell2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    //ViewControllerのViewにTableViewCellを登録
    UINib *nib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"girl"];
    
    nib = [UINib nibWithNibName:@"TableViewCell2" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"boy"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//必須メソッド
//tableViewのcellの数を返す
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // UITableViewの表示する行数を設定します。
    //「return 0」から「return 1」に変更します。(1行表示されるようになります)
    return 5;
}

//tableViewに表示するcellを返す
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //書き慣れない
    // NSString *identifer = indexPath.row % 2 == 0 ? @"girl" : @"boy";
    
    _tableCell.girlLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];

    
    NSString *identifer;
    if (indexPath.row % 2 == 0) {
        identifer = @"boy";
    } else {
        identifer = @"girl";
    }
    
    _tableCell = [tableView dequeueReusableCellWithIdentifier:identifer];
    
    return _tableCell;
}

//tableViewのcellの高さを返す
-(CGFloat) tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath {
  
    return 125;
}
@end
