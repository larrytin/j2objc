//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilNavigableSet_H_
#define _JavaUtilNavigableSet_H_

@protocol JavaUtilIterator;

#import "JreEmulation.h"
#include "java/util/SortedSet.h"

@protocol JavaUtilNavigableSet < JavaUtilSortedSet, NSObject, JavaObject >
- (id)lowerWithId:(id)e;
- (id)floorWithId:(id)e;
- (id)ceilingWithId:(id)e;
- (id)higherWithId:(id)e;
- (id)pollFirst;
- (id)pollLast;
- (id<JavaUtilIterator>)iterator;
- (id<JavaUtilNavigableSet>)descendingSet;
- (id<JavaUtilIterator>)descendingIterator;
- (id<JavaUtilNavigableSet>)subSetWithId:(id)fromElement
                             withBoolean:(BOOL)fromInclusive
                                  withId:(id)toElement
                             withBoolean:(BOOL)toInclusive;
- (id<JavaUtilNavigableSet>)headSetWithId:(id)toElement
                              withBoolean:(BOOL)inclusive;
- (id<JavaUtilNavigableSet>)tailSetWithId:(id)fromElement
                              withBoolean:(BOOL)inclusive;
- (id<JavaUtilSortedSet>)subSetWithId:(id)fromElement
                               withId:(id)toElement;
- (id<JavaUtilSortedSet>)headSetWithId:(id)toElement;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)fromElement;
@end

#endif // _JavaUtilNavigableSet_H_
