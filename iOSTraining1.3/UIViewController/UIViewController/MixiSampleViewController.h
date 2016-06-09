//
//  MixiSampleViewController.h
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MixiSampleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *pinkOver; // UIView
@property (weak, nonatomic) IBOutlet UIView *pinkUnder; // UIView
@property (weak, nonatomic) IBOutlet UIView *yellowUnder; // UIView



- (IBAction)createView:(UIButton *)sender; // viewの表示アクション
- (IBAction)deleteView:(UIButton *)sender; // viewの非表示アクション
@end
