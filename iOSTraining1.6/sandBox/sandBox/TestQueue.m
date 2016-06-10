//
//  TestQueue.m
//  sandBox
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "TestQueue.h"

@implementation TestQueue

- (void)push:(id)object
{
    [_que addObject:object];
}

- (id)pop
{
    return _que[0];
}

- (NSInteger)size
{
    return _que.count;
}

@end

