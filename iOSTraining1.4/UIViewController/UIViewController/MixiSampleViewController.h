//
//  MixiSampleViewController.h
//  UIViewController
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MixiSampleViewController.h"

@protocol MixiSampleControllerDelegate <NSObject> // [1] プロトコルの宣言
-(void)didPressCloseButton;

@end
@interface MixiSampleViewController : UIViewController

@property (nonatomic, weak) id<MixiSampleControllerDelegate> delegate; // [2] delegate オブジェクト

@property (weak, nonatomic) IBOutlet UIView *pinkOver; // UIView
@property (weak, nonatomic) IBOutlet UIView *pinkUnder; // UIView
@property (weak, nonatomic) IBOutlet UIView *yellowUnder; // UIView

@end
