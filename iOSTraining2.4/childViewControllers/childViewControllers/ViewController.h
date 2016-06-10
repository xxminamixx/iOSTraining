//
//  ViewController.h
//  childViewControllers
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(NSUInteger)supportedInterfaceOrientations;
@property (weak, nonatomic) IBOutlet UIView *container;

@end

