//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/SortedSet.java
//
//  Created by retechretech on 13-3-15.
//

@protocol JavaUtilComparator;

#import "JreEmulation.h"
#import "java/util/Set.h"

@protocol JavaUtilSortedSet < JavaUtilSet, NSObject >
- (id<JavaUtilComparator>)comparator;
- (id)first;
- (id<JavaUtilSortedSet>)headSetWithId:(id)end;
- (id)last;
- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)start;
@end