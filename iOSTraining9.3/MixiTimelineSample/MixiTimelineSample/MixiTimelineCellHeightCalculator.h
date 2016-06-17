//
//  MixiTimelineCellHeightCalculator.h
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiTimelineEntity.h"

@interface MixiTimelineCellHeightCalculator : NSObject

+(CGFloat)calculateCellHeightWithTimelineEntity:(MixiTimelineEntity *)entity;

@end
