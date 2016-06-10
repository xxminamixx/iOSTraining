//
//  TestQueue.h
//  sandBox
//
//  Created by Minami Kyohei on 2016/06/10.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

@property NSMutableArray *que;

- (void)push:(id)object;//オフジェクト追加
- (id)pop; //先頭を返す
- (NSInteger)size; //キューとスタックの長さを返す

@end
