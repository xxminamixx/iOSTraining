//
//  MixiSampleViewController.h
//  UIViewControllerex
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MixiSampleViewController : UIViewController
                
@property (weak, nonatomic) IBOutlet UILabel *labels;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)button:(id)sender;
- (IBAction)action1:(id)sender;
- (IBAction)action2:(id)sender;
- (IBAction)action3:(id)sender;

@end
