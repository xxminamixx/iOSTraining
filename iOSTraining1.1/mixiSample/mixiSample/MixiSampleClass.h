//
//  MixiSampleClass.h
//  mixiSample
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

// [1] 列挙型
typedef NS_ENUM(NSInteger, SampleType){
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

@property (nonatomic, strong) NSString *name; //[2] property

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType; //[3] instance method
+(NSString *) getStaticString; //[4] class method

@end