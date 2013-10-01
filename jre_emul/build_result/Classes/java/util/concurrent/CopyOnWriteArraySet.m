//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSBooleanArray.h"
#include "IOSObjectArray.h"
#include "java/io/Serializable.h"
#include "java/util/Collection.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"
#include "java/util/concurrent/CopyOnWriteArraySet.h"

@implementation JavaUtilConcurrentCopyOnWriteArraySet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if (self = [super init]) {
    JavaUtilConcurrentCopyOnWriteArraySet_set_al_(self, [[[JavaUtilConcurrentCopyOnWriteArrayList alloc] init] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  if (self = [super init]) {
    JavaUtilConcurrentCopyOnWriteArraySet_set_al_(self, [[[JavaUtilConcurrentCopyOnWriteArrayList alloc] init] autorelease]);
    [al_ addAllAbsentWithJavaUtilCollection:c];
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)size {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) size];
}

- (BOOL)isEmpty {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) isEmpty];
}

- (BOOL)containsWithId:(id)o {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) containsWithId:o];
}

- (IOSObjectArray *)toArray {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) toArray];
}

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)a {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) toArrayWithNSObjectArray:a];
}

- (void)clear {
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) clear];
}

- (BOOL)removeWithId:(id)o {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) removeWithId:o];
}

- (BOOL)addWithId:(id)e {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) addIfAbsentWithId:e];
}

- (BOOL)containsAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) containsAllWithJavaUtilCollection:c];
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) addAllAbsentWithJavaUtilCollection:c] > 0;
}

- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) removeAllWithJavaUtilCollection:c];
}

- (BOOL)retainAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) retainAllWithJavaUtilCollection:c];
}

- (id<JavaUtilIterator>)iterator {
  return [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) iterator];
}

- (BOOL)isEqual:(id)o {
  if (o == self) return YES;
  if (!([o conformsToProtocol: @protocol(JavaUtilSet)])) return NO;
  id<JavaUtilSet> set = (id<JavaUtilSet>) check_protocol_cast((o), @protocol(JavaUtilSet));
  id<JavaUtilIterator> it = [((id<JavaUtilSet>) nil_chk(set)) iterator];
  IOSObjectArray *elements = [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(al_)) getArray];
  int len = (int) [((IOSObjectArray *) nil_chk(elements)) count];
  IOSBooleanArray *matched = [IOSBooleanArray arrayWithLength:len];
  int k = 0;
  while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
    {
      if (++k > len) return NO;
      id x = [it next];
      for (int i = 0; i < len; ++i) {
        if (!IOSBooleanArray_Get(matched, i) && [JavaUtilConcurrentCopyOnWriteArraySet eqWithId:x withId:IOSObjectArray_Get(elements, i)]) {
          (*IOSBooleanArray_GetRef(matched, i)) = YES;
          goto continue_outer;
        }
      }
      return NO;
    }
    continue_outer: ;
  }
  return k == len;
}

+ (BOOL)eqWithId:(id)o1
          withId:(id)o2 {
  return (o1 == nil) ? o2 == nil : [o1 isEqual:o2];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilConcurrentCopyOnWriteArraySet_set_al_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilConcurrentCopyOnWriteArraySet *)other {
  [super copyAllFieldsTo:other];
  JavaUtilConcurrentCopyOnWriteArraySet_set_al_(other, al_);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:al_ name:@"al"]];
  return result;
}

@end
