//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/TreeSet.java
//
//  Created by retechretech on 13-9-25.
//

#include "java/lang/Boolean.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Comparable.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "java/util/SortedMap.h"
#include "java/util/SortedSet.h"
#include "java/util/TreeMap.h"
#include "java/util/TreeSet.h"

@implementation JavaUtilTreeSet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map {
  if (self = [super init]) {
    JavaUtilTreeSet_set_backingMap_(self, map);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initJavaUtilTreeSet {
  if (self = [super init]) {
    JavaUtilTreeSet_set_backingMap_(self, [[[JavaUtilTreeMap alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)init {
  return [self initJavaUtilTreeSet];
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (self = [self initJavaUtilTreeSet]) {
    [self addAllWithJavaUtilCollection:collection];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initJavaUtilTreeSetWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  if (self = [super init]) {
    JavaUtilTreeSet_set_backingMap_(self, [[[JavaUtilTreeMap alloc] initWithJavaUtilComparator:comparator] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  return [self initJavaUtilTreeSetWithJavaUtilComparator:comparator];
}

- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set {
  if (self = [self initJavaUtilTreeSetWithJavaUtilComparator:[((id<JavaUtilSortedSet>) nil_chk(set)) comparator]]) {
    id<JavaUtilIterator> it = [set iterator];
    while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
      [self addWithId:[it next]];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (BOOL)addWithId:(id)object {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) putWithId:object withId:[JavaLangBoolean getTRUE]] == nil;
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  return [super addAllWithJavaUtilCollection:collection];
}

- (void)clear {
  [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) clear];
}

- (id)clone {
  @try {
    JavaUtilTreeSet *clone = (JavaUtilTreeSet *) check_class_cast([super clone], [JavaUtilTreeSet class]);
    if ([(id) backingMap_ isKindOfClass:[JavaUtilTreeMap class]]) {
      JavaUtilTreeSet_set_backingMap_(nil_chk(clone), (id<JavaUtilSortedMap>) check_protocol_cast([((JavaUtilTreeMap *) nil_chk(backingMap_)) clone], @protocol(JavaUtilSortedMap)));
    }
    else {
      JavaUtilTreeSet_set_backingMap_(nil_chk(clone), [[[JavaUtilTreeMap alloc] initWithJavaUtilSortedMap:backingMap_] autorelease]);
    }
    return clone;
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    return nil;
  }
}

- (id<JavaUtilComparator>)comparator {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) comparator];
}

- (BOOL)containsWithId:(id)object {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) containsKeyWithId:object];
}

- (id)first {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) firstKey];
}

- (id<JavaUtilSortedSet>)headSetWithId:(id)end {
  id<JavaUtilComparator> c = [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) comparator];
  if (c == nil) {
    [((id<JavaLangComparable>) nil_chk(end)) compareToWithId:end];
  }
  else {
    [c compareWithId:end withId:end];
  }
  return [[[JavaUtilTreeSet alloc] initWithJavaUtilSortedMap:[backingMap_ headMapWithId:end]] autorelease];
}

- (BOOL)isEmpty {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) isEmpty];
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilSet>) nil_chk([((id<JavaUtilSortedMap>) nil_chk(backingMap_)) keySet])) iterator];
}

- (id)last {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) lastKey];
}

- (BOOL)removeWithId:(id)object {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) removeWithId:object] != nil;
}

- (int)size {
  return [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) size];
}

- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end {
  id<JavaUtilComparator> c = [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) comparator];
  if (c == nil) {
    if ([((id<JavaLangComparable>) nil_chk(start)) compareToWithId:end] <= 0) {
      return [[[JavaUtilTreeSet alloc] initWithJavaUtilSortedMap:[backingMap_ subMapWithId:start withId:end]] autorelease];
    }
  }
  else {
    if ([c compareWithId:start withId:end] <= 0) {
      return [[[JavaUtilTreeSet alloc] initWithJavaUtilSortedMap:[backingMap_ subMapWithId:start withId:end]] autorelease];
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
}

- (id<JavaUtilSortedSet>)tailSetWithId:(id)start {
  id<JavaUtilComparator> c = [((id<JavaUtilSortedMap>) nil_chk(backingMap_)) comparator];
  if (c == nil) {
    [((id<JavaLangComparable>) nil_chk(start)) compareToWithId:start];
  }
  else {
    [c compareWithId:start withId:start];
  }
  return [[[JavaUtilTreeSet alloc] initWithJavaUtilSortedMap:[backingMap_ tailMapWithId:start]] autorelease];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilTreeSet_set_backingMap_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilTreeSet *)other {
  [super copyAllFieldsTo:other];
  JavaUtilTreeSet_set_backingMap_(other, backingMap_);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingMap_ name:@"backingMap"]];
  return result;
}

@end
