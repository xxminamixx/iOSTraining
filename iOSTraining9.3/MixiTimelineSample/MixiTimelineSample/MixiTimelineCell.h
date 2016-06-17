//
//  MixiTimelineCell.h
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MixiTimelineEntity.h"

@interface MixiTimelineCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *authorLabel;
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;

-(void)composeUIWithEntity:(MixiTimelineEntity *)entity;

@end
