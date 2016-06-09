//
//  MixiSampleViewController.m
//  UIViewControllerex
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiSampleViewController.h"

@implementation MixiSampleViewController

- (IBAction)button:(id)sender {
    NSLog(@"push button");
}

- (IBAction)action1:(id)sender {
    
    self.labels.text = @"switch1";
}

- (IBAction)action2:(id)sender {
    self.labels.text = @"switch2";
}

- (IBAction)action3:(id)sender {
    self.labels.text = @"switch3";

}

- (IBAction)buttonTapped:(id)sender
{
    self.labels.text = @"YES";
}

@end
