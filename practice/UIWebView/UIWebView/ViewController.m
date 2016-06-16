//
//  ViewController.m
//  UIWebView
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UINavigationItem *naviTitle;
- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;
- (IBAction)reroad:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _webView.delegate = self;
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.co.jp/"]];
    [_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"%@", request);
    return YES; // YESを返さないとそこからの処理が進みません
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    _naviTitle.title = title;
    
}

- (IBAction)back:(id)sender {
    [_webView goBack];
}

- (IBAction)next:(id)sender {
    [_webView goForward];
}

- (IBAction)reroad:(id)sender {
    [_webView reload];
}

@end
