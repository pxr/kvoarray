//
//  KVOArrayHolder.m
//  kvoarray
//
//  Created by Paul Robinson on 2014-04-16.
//  Copyright (c) 2014 Elastic Rat. All rights reserved.
//

#import "KVOArrayHolder.h"



@implementation KVOArrayHolder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [[NSArray alloc] init];
    }
    return self;
}

- (void)addDataObject:(id)theDataObject
{
    NSMutableArray *dataObjectArrayKVC=[self mutableArrayValueForKey:@"array"];
    [dataObjectArrayKVC addObject:theDataObject];
}

@end
