//
//  MixiRequestManager.h
//  MixiRequestManagerSample
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import <Foundation/Foundation.h>

typedef void (^completeBlock_t)(NSURLResponse *response, NSData *data);
typedef void (^errorBlock_t)(NSURLResponse *response, NSError *error);

@interface MixiRequestManager : NSObject
+(void)sendAsynchronousRequest:(NSURLRequest *)request completionHandler:(completeBlock_t)cBlock errorHandler:(errorBlock_t)eBlock;
@end
