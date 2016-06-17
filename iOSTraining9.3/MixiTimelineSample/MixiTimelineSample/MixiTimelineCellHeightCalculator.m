//
//  MixiTimelineCellHeightCalculator.m
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiTimelineCellHeightCalculator.h"

@implementation MixiTimelineCellHeightCalculator

+(CGFloat)calculateCellHeightWithTimelineEntity:(MixiTimelineEntity *)entity;
{
    if ([entity.objectType isEqualToString:@"text"]) {
        return [[self class] calculateTextCellHeightWithEntity:entity];
    }
    else if([entity.objectType isEqualToString:@"photo"]) {
        return [self calculatePhotoCellHeightWithEntity:entity];
    }
    else{
        return 0;
    }
}

+(CGFloat)calculateTextCellHeightWithEntity:(MixiTimelineEntity *)entity
{
    UIFont *font = [UIFont systemFontOfSize:17.0f];
    CGSize constraintSize = {280, 600};
    CGSize size = [entity.text sizeWithFont:font
                          constrainedToSize:constraintSize
                              lineBreakMode:NSLineBreakByWordWrapping];
    return  80 + size.height + 20;
}

+(CGFloat)calculatePhotoCellHeightWithEntity:(MixiTimelineEntity *)entity
{
    CGFloat height = entity.photoHeight;
    return 80 + height + 20;
}

@end
