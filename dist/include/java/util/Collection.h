//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilCollection_H_
#define _JavaUtilCollection_H_

@class IOSObjectArray;
@protocol JavaUtilIterator;

#import "JreEmulation.h"
#include "java/lang/Iterable.h"

@protocol JavaUtilCollection < JavaLangIterable, NSObject, JavaObject >
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (BOOL)removeWithId:(id)object;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (int)size;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)array;
@end

#endif // _JavaUtilCollection_H_
