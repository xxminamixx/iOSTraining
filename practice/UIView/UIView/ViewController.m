//
//  ViewController.m
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *label;
- (IBAction)input:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *table;
@property (weak, nonatomic) IBOutlet UITableViewCell *cell1;

@end

@implementation ViewController : UIViewController <tableView>

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //xibをstoryboardに追加する
    //調査した中で一番簡潔であった
    /*
    UINib *nib = [UINib nibWithNibName:@"tableView" bundle:nil];
    [nib instantiateWithOwner:self options:nil];
    */
}

// 設定（セル）
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                            forIndexPath:indexPath];
    NSMutableArray *_objects;
    NSDate *object = _objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
- (IBAction)input:(id)sender {
    NSLog(@"inner");
}
@end
