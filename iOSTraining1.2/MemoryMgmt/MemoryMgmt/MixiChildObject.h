//
//  MixiChildObject.h
//  MemoryMgmt
//
//  Created by Minami Kyohei on 2016/06/09.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MixiParentObject.h"

@interface MixiChildObject : MixiParentObject

@property MixiParentObject *obj;

@end
