//
//  ViewController.h
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MixiSampleViewController.h"


@interface ViewController : UIViewController

@property  MixiSampleViewController *sampleVC;
@property (weak, nonatomic) IBOutlet UIButton *showButton;
@property (weak, nonatomic) IBOutlet UIButton *hideButton;

- (IBAction)showView:(id)sender;
- (IBAction)hideView:(id)sender;

@end

