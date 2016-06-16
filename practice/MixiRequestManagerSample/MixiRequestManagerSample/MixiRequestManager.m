//
//  MixiRequestManager.m
//  MixiRequestManagerSample
//
//  Created by Minami Kyohei on 2016/06/16.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//


#import "MixiRequestManager.h"

@implementation MixiRequestManager
+(void)sendAsynchronousRequest:(NSURLRequest *)request completionHandler:(completeBlock_t)cBlock errorHandler:(errorBlock_t)eBlock
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

        NSError *error;
        NSURLResponse *response;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];

        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                eBlock(response, error);
            } else {
                cBlock(response, data);
            }
        });

    });
}
@end
