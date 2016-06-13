//
//  ViewController.m
//  UITextField
//
//  Created by Minami Kyohei on 2016/06/13.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *textFieldCount;
@property (weak, nonatomic) IBOutlet UILabel *textViewCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // textFieldはUITextField型の変数
    _textField.delegate = self;
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {
    
    
    if (_textField.text.length) {
        NSInteger count = _textView.text.length;
        NSString *str = [[NSString stringWithFormat:@"%ld", (long)count];
        
    }

    
    if (_textView.text.length) {
        _textViewCount.text = _textViewCount.text.length;
    }
    
    
    
        
    // textFieldを最初にイベントを受け取る対象から外すことで、
    // キーボードを閉じる。
    [targetTextField resignFirstResponder];
    
    return YES;
}
@end
