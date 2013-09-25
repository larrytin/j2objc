//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/Map.java
//
//  Created by retechretech on 13-9-25.
//

#ifndef _JavaUtilMap_H_
#define _JavaUtilMap_H_

@protocol JavaUtilCollection;
@protocol JavaUtilSet;

#import "JreEmulation.h"

@protocol JavaUtilMap < NSObject, JavaObject >
- (void)clear;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (BOOL)isEqual:(id)object;
- (id)getWithId:(id)key;
- (NSUInteger)hash;
- (BOOL)isEmpty;
- (id<JavaUtilSet>)keySet;
- (id)putWithId:(id)key
         withId:(id)value;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (int)size;
- (id<JavaUtilCollection>)values;
@end

@protocol JavaUtilMap_Entry < NSObject, JavaObject >
- (id)getKey;
- (id)getValue;
- (id)setValueWithId:(id)object;
@end

#endif // _JavaUtilMap_H_
