//
//  ViewController.m
//  NSFileManager
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)save:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *load;
@property (weak, nonatomic) IBOutlet UITextField *testField;
//- (NSArray *)fileURL;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
//ディレクトリのURLを返す
- (NSArray *)fileURL
{
    NSFileManager *fileManager = [NSFileManager new];
    
    //Documentディレクトリのパスを格納
    NSArray *urls = [fileManager URLsForDirectory:NSDocumentDirectory
                                        inDomains:NSUserDomainMask];
    return urls;
}
*/

- (IBAction)load:(id)sender {

}


- (IBAction)save:(id)sender {
    NSFileManager *fileManager = [NSFileManager new];
    
    //Documentディレクトリのパスを格納
    NSArray *urls = [fileManager URLsForDirectory:NSDocumentDirectory
                                        inDomains:NSUserDomainMask];
    NSLog(@"%@", urls[0]);
    
    //格納
    [_testField.text writeToURL:urls[0] atomically:YES];

}
@end
