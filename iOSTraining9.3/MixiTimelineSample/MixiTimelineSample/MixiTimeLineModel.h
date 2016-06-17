//
//  MixiTimeLineModel.h
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiTimelineEntity.h"

@protocol MixiTimeLineModelDelegate <NSObject>

-(void) timeLineModelDidFinishLoad;
-(void) timeLineModelDidFailLoad;

@end

@interface MixiTimeLineModel : NSObject

@property (nonatomic, strong) NSMutableArray *timelineArray;
@property (nonatomic, weak) id delegate;

-(void)fetchTimelineData;

@end
