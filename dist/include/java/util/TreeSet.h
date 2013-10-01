//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilTreeSet_H_
#define _JavaUtilTreeSet_H_

@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilIterator;
@protocol JavaUtilSortedMap;

#import "JreEmulation.h"
#include "java/io/Serializable.h"
#include "java/util/AbstractSet.h"
#include "java/util/SortedSet.h"

#define JavaUtilTreeSet_serialVersionUID -2479143000061671589

@interface JavaUtilTreeSet : JavaUtilAbstractSet < JavaUtilSortedSet, NSCopying, JavaIoSerializable > {
 @public
  id<JavaUtilSortedMap> backingMap_;
}

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (id)init;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;
- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (id)clone;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsWithId:(id)object;
- (id)first;
- (id<JavaUtilSortedSet>)headSetWithId:(id)end;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (id)last;
- (BOOL)removeWithId:(id)object;
- (int)size;
- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)start;
- (id)copyWithZone:(NSZone *)zone;
- (void)copyAllFieldsTo:(JavaUtilTreeSet *)other;
@end

J2OBJC_FIELD_SETTER(JavaUtilTreeSet, backingMap_, id<JavaUtilSortedMap>)

#endif // _JavaUtilTreeSet_H_
