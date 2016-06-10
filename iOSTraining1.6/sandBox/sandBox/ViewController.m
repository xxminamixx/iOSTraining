//
//  ViewController.m
//  sandBox
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // logの出力
    NSLog(@"Hello World");
    
    //NSArray
    NSArray *ary = [NSArray new];
    ary = @[@"Apple", @"Orange", @"Grape"];
    
    //高速列挙
    for (NSArray *d in ary) {
        NSLog(@"%@",d);
    }
    
    //代入は不可
    // ary[0] = @"りんご";
    
    /*--*/
    
    //NSMutableArray
    NSMutableArray *mary = [NSMutableArray new];
    
    //MSMutableArrayに格納するNSString
    NSString *str1 = @"first";
    NSString *str2 = @"second";
    
    //格納
    [mary addObject:str1];
    [mary addObject:str2];
    
    //index0を削除
    [mary removeObjectAtIndex:0];
    
    //高速列挙
    for (NSArray *d in mary) {
        NSLog(@"%@",d);
    }
    
    /*--*/
    
    //NSDictionary
    NSDictionary *dic = @{@"score": @100, @"time" : @60};
   
    //score = 100
    id obj = dic[@"score"];
    NSLog(@"%@", obj);
    
    //代入は不可
    
    //NSMutableDictionary
    NSMutableDictionary *mdic = [NSMutableDictionary new];
   
    //keyという文字列をキーとしてvalueを代入
    mdic[@"key"] = @"value";
    
    //keyを削除
    [mdic removeObjectForKey:@"key"];
    
    // nilを代入するとクラッシュ
    // mdic[@"nil"] = nil;
    
    /*--*/
    
    NSNumber *number = @1;
    
    // 直接intなどを代入できないが、NSNumberでラップしたら使える
    NSArray *array = @[number, @2];
    
    // YES, NO などもキャスト可能
    NSNumber *num = @YES;
    
    // int型へ変換
    int a = [number intValue];
    
    /*--*/
    
    /*
    id obj = nil;
    if(obj) { // always fales
        // do not come here
    } else {
        // come here
    }
    
    // [obj method]; // クラッシュはしませんが、何も起きません
    */
    
    
    
    //課題1
    NSArray *entry1 = [NSArray new];
    entry1 = @[@"list_voice.pl", @"list_diary.pl", @"list_mymall_item.pl"];
    
    NSMutableDictionary *query = [NSMutableDictionary new];
    query[@"tag_id"] = @7;
    
    NSDictionary *dict = @{
                           @"mixi.jp" : entry1,
                           @"mmall.jp" : query
                           };
    
    NSLog(@"%@", dict);
    
    //課題2
    TestQueue *queue = [TestQueue new];
    NSString *first = @"first";
    NSString *second = @"second";
    
    [queue push: first];
    [queue push: second];
    
    
    NSLog(@"%lu", [queue size]);
    
    
    
    
    
                      
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
