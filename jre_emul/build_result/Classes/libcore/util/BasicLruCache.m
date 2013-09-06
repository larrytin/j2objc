//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/util/BasicLruCache.java
//
//  Created by retechretech on 13-9-4.
//

#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "libcore/util/BasicLruCache.h"

@implementation LibcoreUtilBasicLruCache

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithInt:(int)maxSize {
  if ((self = [super init])) {
    if (maxSize <= 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"maxSize <= 0"] autorelease];
    }
    self->maxSize_ = maxSize;
    LibcoreUtilBasicLruCache_set_map_(self, [[[JavaUtilLinkedHashMap alloc] initWithInt:0 withFloat:0.75f withBOOL:YES] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)getWithId:(id)key {
  @synchronized(self) {
    {
      if (key == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"key == null"] autorelease];
      }
      id result = [((JavaUtilLinkedHashMap *) nil_chk(map_)) getWithId:key];
      if (result != nil) {
        return result;
      }
      result = [self createWithId:key];
      if (result != nil) {
        [map_ putWithId:key withId:result];
        [self trimToSizeWithInt:maxSize_];
      }
      return result;
    }
  }
}

- (id)putWithId:(id)key
         withId:(id)value {
  @synchronized(self) {
    {
      if (key == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"key == null"] autorelease];
      }
      else if (value == nil) {
        @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"value == null"] autorelease];
      }
      id previous = [((JavaUtilLinkedHashMap *) nil_chk(map_)) putWithId:key withId:value];
      [self trimToSizeWithInt:maxSize_];
      return previous;
    }
  }
}

- (void)trimToSizeWithInt:(int)maxSize {
  id<JavaUtilIterator> iterator = [((id<JavaUtilSet>) nil_chk([((JavaUtilLinkedHashMap *) nil_chk(map_)) entrySet])) iterator];
  while ([map_ size] > maxSize) {
    id<JavaUtilMap_Entry> toEvict = [((id<JavaUtilIterator>) nil_chk(iterator)) next];
    id key = [((id<JavaUtilMap_Entry>) nil_chk(toEvict)) getKey];
    id value = [toEvict getValue];
    [map_ removeWithId:key];
    [self entryEvictedWithId:key withId:value];
  }
}

- (void)entryEvictedWithId:(id)key
                    withId:(id)value {
}

- (id)createWithId:(id)key {
  return nil;
}

- (id<JavaUtilMap>)snapshot {
  @synchronized(self) {
    {
      return [[[JavaUtilLinkedHashMap alloc] initWithJavaUtilMap:map_] autorelease];
    }
  }
}

- (void)evictAll {
  @synchronized(self) {
    {
      [self trimToSizeWithInt:0];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  LibcoreUtilBasicLruCache_set_map_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(LibcoreUtilBasicLruCache *)other {
  [super copyAllFieldsTo:other];
  LibcoreUtilBasicLruCache_set_map_(other, map_);
  other->maxSize_ = maxSize_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:map_ name:@"map"]];
  return result;
}

@end
