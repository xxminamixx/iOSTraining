//
//  MixiTableViewController.m
//  MixiRequestManagerSample
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import "MixiTableViewController.h"

#import "MixiRequestManager.h"

@interface MixiTableViewController ()
@property (nonatomic, strong) NSMutableArray *urlStringList;
@property (nonatomic, strong) NSMutableDictionary *imageDict;
@end

@implementation MixiTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // 初期化など
    [self.tableView registerNib:[UINib nibWithNibName:@"MixiTableViewCell" bundle:nil]
         forCellReuseIdentifier:@"MixiTableViewCell"];
    _urlStringList = [NSMutableArray array];
    _imageDict = [NSMutableDictionary dictionary];


    // リクエストを投げる
    // ここで正しくないリクエストを送るとエラーブロックへ
    NSURL *url = [NSURL URLWithString:@"https://developer.apple.com/wwdc/"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [MixiRequestManager sendAsynchronousRequest:req completionHandler:^(NSURLResponse *response, NSData *data) {

        NSError *jsonError;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];


        // JSONが正しく取得できたとき
        if (!jsonError) {
            [self parseJSONResponse:json]; //  パースしてurlを取得
            [self getImages]; // urlから画像を取りに行く
        }

    } errorHandler:^(NSURLResponse *response, NSError *error) {
        NSLog(@"error occured!!\n%@", error);
    }];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)parseJSONResponse:(NSDictionary *)json
{
    NSArray *entry = json[@"feed"][@"entry"];

    for (NSDictionary *dict in entry) {
        NSString *urlStr = dict[@"media$group"][@"media$thumbnail"][0][@"url"];
        [_urlStringList addObject:urlStr];
    }
}

- (void)getImages
{
    for (NSString *urlString in _urlStringList) {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
        [MixiRequestManager sendAsynchronousRequest:request completionHandler:^(NSURLResponse *response, NSData *data) {

            UIImage *image = [UIImage imageWithData:data]; // レスポンスデータからUIImageを作る
            _imageDict[urlString] = image; // url文字列をキーとして辞書に保存
            [self.tableView reloadData];

        } errorHandler:^(NSURLResponse *response, NSError *error) {
            NSLog(@"error occured!!\n%@", error);
        }];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _urlStringList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 198.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MixiTableViewCell";
    MixiTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    NSString *urlString = _urlStringList[indexPath.row];
    cell.imageView.image = _imageDict[urlString];

    return cell;
}


@end


@implementation MixiTableViewCell
@end