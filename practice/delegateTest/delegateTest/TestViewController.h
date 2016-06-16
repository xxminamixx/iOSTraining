//
//  TestViewController.h
//  delegateTest
//
//  Created by Minami Kyohei on 2016/06/15.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol delegateTest <NSObject> // 1.プロトコルを定義
- (void)callCatch:(NSString *)str; // 2.デリゲードメソッドを定義
@end

@interface TestViewController : UIViewController

@property (weak, nonatomic) id<delegateTest> delegate; //3.デリゲードインスタンスを定義
-(void)call:(NSString *)str;
@end


