//
//  tableView.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

// Delegate用のプロトコルを宣言 @property id <ここに対応> delegate;
@protocol TableView <NSObject>

- (void)copyText:(NSString *) label;
@end

@interface tableView ()
- (IBAction)pushAction1:(id)sender;
@property (weak, nonatomic) id <TableView> delegate;
@end

@implementation tableView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}



/*
- (IBAction)removeText:(id)sender {
    
}
*/

- (IBAction)pushAction1:(id)sender {
    NSString *str = @"delegate clear";
    [self.delegate copyText: str];
}
@end
