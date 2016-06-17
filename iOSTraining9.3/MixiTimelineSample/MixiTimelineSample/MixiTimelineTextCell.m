//
//  MixiTimelineTextCell.m
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiTimelineTextCell.h"

@interface MixiTimelineTextCell()

@property (nonatomic, weak) IBOutlet UILabel *mainTextLabel;

@end

@implementation MixiTimelineTextCell

-(void)composeUIWithEntity:(MixiTimelineEntity *)entity
{
    self.authorLabel.text = entity.author;
    self.dateLabel.text = entity.date;
    _mainTextLabel.text = entity.text;
    [_mainTextLabel sizeToFit];
}


@end
