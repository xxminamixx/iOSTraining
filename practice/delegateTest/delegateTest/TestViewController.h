//
//  TestViewController.h
//  delegateTest
//
//  Created by Minami Kyohei on 2016/06/15.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol delegateTest <NSObject>
- (void)callCatch:(NSString *)str;
@end

@interface TestViewController : UIViewController

@property (weak, nonatomic) id<delegateTest> delegate;
-(void)call:(NSString *)str;
@end


