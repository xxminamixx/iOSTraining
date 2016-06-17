//
//  MixiTimelinePhotoCell.m
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiTimelinePhotoCell.h"

@interface MixiTimelinePhotoCell()

@property (nonatomic, weak) IBOutlet UIImageView *iamgeView;

@end

@implementation MixiTimelinePhotoCell

-(void)composeUIWithEntity:(MixiTimelineEntity *)entity
{
    self.authorLabel.text = entity.author;
    self.dateLabel.text = entity.date;

    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:entity.photoURL]];
    [NSURLConnection sendAsynchronousRequest:imageRequest
                                       queue:[[NSOperationQueue alloc] init]
                           completionHandler:^(NSURLResponse *responce, NSData *data, NSError *error) {
                               [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                                   [_iamgeView setImage:[UIImage imageWithData:data]];
                               }];
                           }];
}

@end
