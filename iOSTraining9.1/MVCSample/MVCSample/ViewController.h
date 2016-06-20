//
//  ViewController.h
//  MVCSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property NSString *label1_copy;

//ボタンメソッド定義
- (IBAction)view1:(id)sender;

- (void)setStr:(NSString *)text;
- (NSString *)getStr;

@end

