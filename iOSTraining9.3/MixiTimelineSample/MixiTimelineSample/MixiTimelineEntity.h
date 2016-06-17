//
//  MixiTimelineEntity.h
//  MixiTimelineSample
//
//  Created by Minami Kyohei on 2016/06/17.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MixiTimelineEntity : NSObject

@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSString *objectType;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *photoURL;
@property (nonatomic, assign) CGFloat photoHeight;

-(id)initWithDict:(NSDictionary *)dict;

@end
