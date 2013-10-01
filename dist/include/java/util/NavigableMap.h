//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _JavaUtilNavigableMap_H_
#define _JavaUtilNavigableMap_H_

@protocol JavaUtilMap_Entry;
@protocol JavaUtilNavigableSet;

#import "JreEmulation.h"
#include "java/util/SortedMap.h"

@protocol JavaUtilNavigableMap < JavaUtilSortedMap, NSObject, JavaObject >
- (id<JavaUtilMap_Entry>)lowerEntryWithId:(id)key;
- (id)lowerKeyWithId:(id)key;
- (id<JavaUtilMap_Entry>)floorEntryWithId:(id)key;
- (id)floorKeyWithId:(id)key;
- (id<JavaUtilMap_Entry>)ceilingEntryWithId:(id)key;
- (id)ceilingKeyWithId:(id)key;
- (id<JavaUtilMap_Entry>)higherEntryWithId:(id)key;
- (id)higherKeyWithId:(id)key;
- (id<JavaUtilMap_Entry>)firstEntry;
- (id<JavaUtilMap_Entry>)lastEntry;
- (id<JavaUtilMap_Entry>)pollFirstEntry;
- (id<JavaUtilMap_Entry>)pollLastEntry;
- (id<JavaUtilNavigableMap>)descendingMap;
- (id<JavaUtilNavigableSet>)navigableKeySet;
- (id<JavaUtilNavigableSet>)descendingKeySet;
- (id<JavaUtilNavigableMap>)subMapWithId:(id)fromKey
                             withBoolean:(BOOL)fromInclusive
                                  withId:(id)toKey
                             withBoolean:(BOOL)toInclusive;
- (id<JavaUtilNavigableMap>)headMapWithId:(id)toKey
                              withBoolean:(BOOL)inclusive;
- (id<JavaUtilNavigableMap>)tailMapWithId:(id)fromKey
                              withBoolean:(BOOL)inclusive;
- (id<JavaUtilSortedMap>)subMapWithId:(id)fromKey
                               withId:(id)toKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)toKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)fromKey;
@end

#endif // _JavaUtilNavigableMap_H_
