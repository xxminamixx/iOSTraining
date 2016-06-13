//
//  tableView.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "tableView.h"

// Delegate用のプロトコルを宣言 @property id <ここに対応> delegate;
@protocol TableView <NSObject>

- (void)copyText:(NSString *) label;
@end

@interface tableView ()
//- (IBAction)addText:(id)sender;
//- (IBAction)removeText:(id)sender;
@property (weak, nonatomic) id <TableView> delegate;
@property (weak, nonatomic) IBOutlet UITextField *text;

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*
- (IBAction)addText:(id)sender {
    //[self.delegate copyText:_text.text];
}


- (IBAction)removeText:(id)sender {
    
}
 */

@end
