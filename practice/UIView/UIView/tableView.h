//
//  tableView.h
//  UIView
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocolを宣言しておく
@protocol tableDelegate;

@interface tableView : UIViewController
{
    id<tableDelegate> _delegate;
}

@property (weak, nonatomic) id<tableDelegate> delegate;

-(void)call;

@end

#pragma mark delegate prottype
//protocol宣言
@protocol tableDelegate<NSObject>
@optional
- (void)showlog;
@end