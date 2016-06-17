//
//  MixiTimelineEntity.m
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "MixiTimelineEntity.h"

@implementation MixiTimelineEntity

-(id)initWithDict:(NSDictionary *)dict
{
    if(self=[super init]){
        _author = dict[@"author"];
        _date = dict[@"date"];
        _objectType = dict[@"object_type"];
        _text = dict[@"text"];
        _photoURL = dict[@"photo_url"];
        _photoHeight = [dict[@"photo_height"] floatValue];
    }
    return self;
}

@end
