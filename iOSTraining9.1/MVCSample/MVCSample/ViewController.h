//
//  ViewController.h
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol pushButton <NSObject>

@required
- (void)View1Action;
- (void)View2Action;
- (void)View3Action;

@end

@interface ViewController : UIViewController
@property (weak, nonatomic) id<pushButton> delegate;
- (IBAction)view1:(id)sender;
- (IBAction)view2:(id)sender;
- (IBAction)view3:(id)sender;
@end

