//
//  HSViewController.m
//  HTTPSample
//
//  Created by Minami Kyohei on 2016/06/14.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "HSViewController.h"

@interface HSViewController ()

@end

@implementation HSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSURL *url = [NSURL URLWithString:@"http://your end point"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

    NSOperationQueue *queue = [NSOperationQueue new];
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *res, NSData *data, NSError *error) {
        NSString *responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            _label.text = responseString;
        }];

    }];

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    id obj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    NSLog(@"%@", obj);

    data = [NSJSONSerialization dataWithJSONObject:obj options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
