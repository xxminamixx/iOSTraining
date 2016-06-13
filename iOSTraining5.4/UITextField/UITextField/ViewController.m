
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
@property (strong, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //@selectorによりキーボードが出現したときにdelegateメソッドが呼ばれる
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//デリゲードメソッド
#pragma mark - keyboardNotification
-(void)keyboardWillShow:(NSNotification *)notification
{
    NSLog(@"%@", notification.userInfo);
     NSLog(@"キーボード入力中");
    /*
    CGRect resize = CGRectMake(0, 0, 414, 465);
    self.testView.frame = resize;
    */
}


- (BOOL)textFieldShouldReturn:(UITextField *)targetTextField {
    
    if (_textField.text.length) {
        _textFieldCount.text = [NSString stringWithFormat:@"%lu", _textField.text.length];
    }
    
    if (_textView.text.length) {
        _textViewCount.text = [NSString stringWithFormat:@"%lu", _textView.text.length];
    }
        
    // textFieldを最初にイベントを受け取る対象から外すことで、
    // キーボードを閉じる。
    [targetTextField resignFirstResponder];
    
    return YES;
}
@end
