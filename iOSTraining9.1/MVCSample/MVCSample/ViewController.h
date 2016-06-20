//
//  ViewController.h
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

//プロトコル定義
@protocol pushButton <NSObject>

//デリゲートメソッド定義
@required
- (void)View1Action;
- (void)View2Action;
- (void)View3Action;
@end

@interface ViewController : UIViewController

//デリゲートインスタンス定義
@property (weak, nonatomic) id<pushButton> delegate;
@property NSString *label1_copy;



//ボタンメソッド定義
- (IBAction)view1:(id)sender;
- (IBAction)view2:(id)sender;
- (IBAction)view3:(id)sender;


- (void)setStr:(NSString *)text;
- (NSString *)getStr;

@end

