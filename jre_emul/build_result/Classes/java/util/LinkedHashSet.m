//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/LinkedHashSet.java
//
//  Created by retechretech on 13-3-15.
//

#import "java/util/Collection.h"
#import "java/util/HashMap.h"
#import "java/util/HashSet.h"
#import "java/util/Iterator.h"
#import "java/util/LinkedHashMap.h"
#import "java/util/LinkedHashSet.h"

@implementation JavaUtilLinkedHashSet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super initWithJavaUtilHashMap:[[[JavaUtilLinkedHashMap alloc] init] autorelease]]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithJavaUtilHashMap:[[[JavaUtilLinkedHashMap alloc] initWithInt:capacity] autorelease]]);
}

- (id)initWithInt:(int)capacity
        withFloat:(float)loadFactor {
  return JreMemDebugAdd([super initWithJavaUtilHashMap:[[[JavaUtilLinkedHashMap alloc] initWithInt:capacity withFloat:loadFactor] autorelease]]);
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if ((self = [super initWithJavaUtilHashMap:[[[JavaUtilLinkedHashMap alloc] initWithInt:[((id<JavaUtilCollection>) NIL_CHK(collection)) size] < 6 ? 11 : [((id<JavaUtilCollection>) NIL_CHK(collection)) size] * 2] autorelease]])) {
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(collection)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        id e = [((id<JavaUtilIterator>) NIL_CHK(iter__)) next];
        [self addWithId:e];
      }
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaUtilHashMap *)createBackingMapWithInt:(int)capacity
                                   withFloat:(float)loadFactor {
  return [[[JavaUtilLinkedHashMap alloc] initWithInt:capacity withFloat:loadFactor] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
