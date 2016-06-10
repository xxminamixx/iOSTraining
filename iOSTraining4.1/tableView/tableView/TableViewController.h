//
//  TableViewController.h
//  tableView
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *xibView;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end
