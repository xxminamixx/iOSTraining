//
//  ViewControllerChild.h
//  NavigationController
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerChild : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;

- (IBAction)back:(id)sender;
- (IBAction)top:(id)sender;
- (IBAction)next:(id)sender;
@end
