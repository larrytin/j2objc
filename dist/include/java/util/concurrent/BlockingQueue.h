//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilConcurrentBlockingQueue_H_
#define _JavaUtilConcurrentBlockingQueue_H_

@class JavaUtilConcurrentTimeUnitEnum;
@protocol JavaUtilCollection;

#import "JreEmulation.h"
#include "java/util/Queue.h"

@protocol JavaUtilConcurrentBlockingQueue < JavaUtilQueue, NSObject, JavaObject >
- (BOOL)addWithId:(id)e;
- (BOOL)offerWithId:(id)e;
- (void)putWithId:(id)e;
- (BOOL)offerWithId:(id)e
           withLong:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (id)take;
- (id)pollWithLong:(long long int)timeout
withJavaUtilConcurrentTimeUnitEnum:(JavaUtilConcurrentTimeUnitEnum *)unit;
- (int)remainingCapacity;
- (BOOL)removeWithId:(id)o;
- (BOOL)containsWithId:(id)o;
- (int)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (int)drainToWithJavaUtilCollection:(id<JavaUtilCollection>)c
                             withInt:(int)maxElements;
@end

#endif // _JavaUtilConcurrentBlockingQueue_H_
