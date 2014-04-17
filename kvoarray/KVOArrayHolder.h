//
//  KVOArrayHolder.h
//  kvoarray
//
//  Created by Paul Robinson on 2014-04-16.
//  Copyright (c) 2014 Elastic Rat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVOArrayHolder : NSObject

@property NSArray *array;

- (void)addDataObject:(id)theDataObject;

@end
