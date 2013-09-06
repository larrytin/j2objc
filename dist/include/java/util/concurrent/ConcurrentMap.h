//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/concurrent/src/main/java/java/util/concurrent/ConcurrentMap.java
//
//  Created by retechretech on 13-9-4.
//

#ifndef _JavaUtilConcurrentConcurrentMap_H_
#define _JavaUtilConcurrentConcurrentMap_H_

#import "JreEmulation.h"
#include "java/util/Map.h"

@protocol JavaUtilConcurrentConcurrentMap < JavaUtilMap, NSObject, JavaObject >
- (id)putIfAbsentWithId:(id)key
                 withId:(id)value;
- (BOOL)removeWithId:(id)key
              withId:(id)value;
- (BOOL)replaceWithId:(id)key
               withId:(id)oldValue
               withId:(id)newValue;
- (id)replaceWithId:(id)key
             withId:(id)value;
@end

#endif // _JavaUtilConcurrentConcurrentMap_H_
