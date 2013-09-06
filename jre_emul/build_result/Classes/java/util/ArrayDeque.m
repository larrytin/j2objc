//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/ArrayDeque.java
//
//  Created by retechretech on 13-9-4.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "java/lang/AssertionError.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/System.h"
#include "java/lang/reflect/Array.h"
#include "java/util/AbstractCollection.h"
#include "java/util/ArrayDeque.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/ConcurrentModificationException.h"
#include "java/util/Iterator.h"
#include "java/util/NoSuchElementException.h"

@implementation JavaUtilArrayDeque

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (void)allocateElementsWithInt:(int)numElements {
  int initialCapacity = JavaUtilArrayDeque_MIN_INITIAL_CAPACITY;
  if (numElements >= initialCapacity) {
    initialCapacity = numElements;
    initialCapacity |= ((int) (((unsigned int) initialCapacity) >> 1));
    initialCapacity |= ((int) (((unsigned int) initialCapacity) >> 2));
    initialCapacity |= ((int) (((unsigned int) initialCapacity) >> 4));
    initialCapacity |= ((int) (((unsigned int) initialCapacity) >> 8));
    initialCapacity |= ((int) (((unsigned int) initialCapacity) >> 16));
    initialCapacity++;
    if (initialCapacity < 0) URShiftAssignInt(&initialCapacity, 1);
  }
  JavaUtilArrayDeque_set_elements_(self, (IOSObjectArray *) [IOSObjectArray arrayWithLength:initialCapacity type:[IOSClass classWithClass:[NSObject class]]]);
}

- (void)doubleCapacity {
  NSAssert(head_ == tail_, @"android/libcore/luni/src/main/java/java/util/ArrayDeque.java:120 condition failed: assert head == tail;");
  int p = head_;
  int n = (int) [((IOSObjectArray *) nil_chk(elements_)) count];
  int r = n - p;
  int newCapacity = n << 1;
  if (newCapacity < 0) @throw [[[JavaLangIllegalStateException alloc] initWithNSString:@"Sorry, deque too big"] autorelease];
  IOSObjectArray *a = [IOSObjectArray arrayWithLength:newCapacity type:[IOSClass classWithClass:[NSObject class]]];
  [JavaLangSystem arraycopyWithId:elements_ withInt:p withId:a withInt:0 withInt:r];
  [JavaLangSystem arraycopyWithId:elements_ withInt:0 withId:a withInt:r withInt:p];
  JavaUtilArrayDeque_set_elements_(self, (IOSObjectArray *) a);
  head_ = 0;
  tail_ = n;
}

- (IOSObjectArray *)copyElementsWithNSObjectArray:(IOSObjectArray *)a {
  if (head_ < tail_) {
    [JavaLangSystem arraycopyWithId:elements_ withInt:head_ withId:a withInt:0 withInt:[self size]];
  }
  else if (head_ > tail_) {
    int headPortionLen = (int) [((IOSObjectArray *) nil_chk(elements_)) count] - head_;
    [JavaLangSystem arraycopyWithId:elements_ withInt:head_ withId:a withInt:0 withInt:headPortionLen];
    [JavaLangSystem arraycopyWithId:elements_ withInt:0 withId:a withInt:headPortionLen withInt:tail_];
  }
  return a;
}

- (id)init {
  if ((self = [super init])) {
    JavaUtilArrayDeque_set_elements_(self, (IOSObjectArray *) [IOSObjectArray arrayWithLength:16 type:[IOSClass classWithClass:[NSObject class]]]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)numElements {
  if ((self = [super init])) {
    [self allocateElementsWithInt:numElements];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  if ((self = [super init])) {
    [self allocateElementsWithInt:[((id<JavaUtilCollection>) nil_chk(c)) size]];
    [self addAllWithJavaUtilCollection:c];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addFirstWithId:(id)e {
  if (e == nil) @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  [elements_ replaceObjectAtIndex:head_ = (head_ - 1) & ((int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1) withObject:e];
  if (head_ == tail_) [self doubleCapacity];
}

- (void)addLastWithId:(id)e {
  if (e == nil) @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  [((IOSObjectArray *) nil_chk(elements_)) replaceObjectAtIndex:tail_ withObject:e];
  if ((tail_ = (tail_ + 1) & ((int) [elements_ count] - 1)) == head_) [self doubleCapacity];
}

- (BOOL)offerFirstWithId:(id)e {
  [self addFirstWithId:e];
  return YES;
}

- (BOOL)offerLastWithId:(id)e {
  [self addLastWithId:e];
  return YES;
}

- (id)removeFirst {
  id x = [self pollFirst];
  if (x == nil) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  return x;
}

- (id)removeLast {
  id x = [self pollLast];
  if (x == nil) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  return x;
}

- (id)pollFirst {
  int h = head_;
  id result = [((IOSObjectArray *) nil_chk(elements_)) objectAtIndex:h];
  if (result == nil) return nil;
  [elements_ replaceObjectAtIndex:h withObject:nil];
  head_ = (h + 1) & ((int) [elements_ count] - 1);
  return result;
}

- (id)pollLast {
  int t = (tail_ - 1) & ((int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1);
  id result = [elements_ objectAtIndex:t];
  if (result == nil) return nil;
  [elements_ replaceObjectAtIndex:t withObject:nil];
  tail_ = t;
  return result;
}

- (id)getFirst {
  id x = [((IOSObjectArray *) nil_chk(elements_)) objectAtIndex:head_];
  if (x == nil) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  return x;
}

- (id)getLast {
  id x = [elements_ objectAtIndex:(tail_ - 1) & ((int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1)];
  if (x == nil) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  return x;
}

- (id)peekFirst {
  return [((IOSObjectArray *) nil_chk(elements_)) objectAtIndex:head_];
}

- (id)peekLast {
  return [elements_ objectAtIndex:(tail_ - 1) & ((int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1)];
}

- (BOOL)removeFirstOccurrenceWithId:(id)o {
  if (o == nil) return NO;
  int mask = (int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1;
  int i = head_;
  id x;
  while ((x = [elements_ objectAtIndex:i]) != nil) {
    if ([nil_chk(o) isEqual:x]) {
      [self delete__WithInt:i];
      return YES;
    }
    i = (i + 1) & mask;
  }
  return NO;
}

- (BOOL)removeLastOccurrenceWithId:(id)o {
  if (o == nil) return NO;
  int mask = (int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1;
  int i = (tail_ - 1) & mask;
  id x;
  while ((x = [elements_ objectAtIndex:i]) != nil) {
    if ([nil_chk(o) isEqual:x]) {
      [self delete__WithInt:i];
      return YES;
    }
    i = (i - 1) & mask;
  }
  return NO;
}

- (BOOL)addWithId:(id)e {
  [self addLastWithId:e];
  return YES;
}

- (BOOL)offerWithId:(id)e {
  return [self offerLastWithId:e];
}

- (id)remove {
  return [self removeFirst];
}

- (id)poll {
  return [self pollFirst];
}

- (id)element {
  return [self getFirst];
}

- (id)peek {
  return [self peekFirst];
}

- (void)pushWithId:(id)e {
  [self addFirstWithId:e];
}

- (id)pop {
  return [self removeFirst];
}

- (void)checkInvariants {
  NSAssert([((IOSObjectArray *) nil_chk(elements_)) objectAtIndex:tail_] == nil, @"android/libcore/luni/src/main/java/java/util/ArrayDeque.java:483 condition failed: assert elements[tail] == null;");
  NSAssert(head_ == tail_ ? [elements_ objectAtIndex:head_] == nil : ([elements_ objectAtIndex:head_] != nil && [elements_ objectAtIndex:(tail_ - 1) & ((int) [elements_ count] - 1)] != nil), @"android/libcore/luni/src/main/java/java/util/ArrayDeque.java:484 condition failed: assert head == tail ? elements[head] == null :\n            (elements[head] != null &&\n             elements[(tail - 1) & (elements.length - 1)] != null);");
  NSAssert([elements_ objectAtIndex:(head_ - 1) & ((int) [elements_ count] - 1)] == nil, @"android/libcore/luni/src/main/java/java/util/ArrayDeque.java:487 condition failed: assert elements[(head - 1) & (elements.length - 1)] == null;");
}

- (BOOL)delete__WithInt:(int)i {
  [self checkInvariants];
  IOSObjectArray *elements = self->elements_;
  int mask = (int) [((IOSObjectArray *) nil_chk(elements)) count] - 1;
  int h = head_;
  int t = tail_;
  int front = (i - h) & mask;
  int back = (t - i) & mask;
  if (front >= ((t - h) & mask)) @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  if (front < back) {
    if (h <= i) {
      [JavaLangSystem arraycopyWithId:elements withInt:h withId:elements withInt:h + 1 withInt:front];
    }
    else {
      [JavaLangSystem arraycopyWithId:elements withInt:0 withId:elements withInt:1 withInt:i];
      [elements replaceObjectAtIndex:0 withObject:[elements objectAtIndex:mask]];
      [JavaLangSystem arraycopyWithId:elements withInt:h withId:elements withInt:h + 1 withInt:mask - h];
    }
    [elements replaceObjectAtIndex:h withObject:nil];
    head_ = (h + 1) & mask;
    return NO;
  }
  else {
    if (i < t) {
      [JavaLangSystem arraycopyWithId:elements withInt:i + 1 withId:elements withInt:i withInt:back];
      tail_ = t - 1;
    }
    else {
      [JavaLangSystem arraycopyWithId:elements withInt:i + 1 withId:elements withInt:i withInt:mask - i];
      [elements replaceObjectAtIndex:mask withObject:[elements objectAtIndex:0]];
      [JavaLangSystem arraycopyWithId:elements withInt:1 withId:elements withInt:0 withInt:t];
      tail_ = (t - 1) & mask;
    }
    return YES;
  }
}

- (int)size {
  return (tail_ - head_) & ((int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1);
}

- (BOOL)isEmpty {
  return head_ == tail_;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilArrayDeque_DeqIterator alloc] initWithJavaUtilArrayDeque:self] autorelease];
}

- (id<JavaUtilIterator>)descendingIterator {
  return [[[JavaUtilArrayDeque_DescendingIterator alloc] initWithJavaUtilArrayDeque:self] autorelease];
}

- (BOOL)containsWithId:(id)o {
  if (o == nil) return NO;
  int mask = (int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1;
  int i = head_;
  id x;
  while ((x = [elements_ objectAtIndex:i]) != nil) {
    if ([nil_chk(o) isEqual:x]) return YES;
    i = (i + 1) & mask;
  }
  return NO;
}

- (BOOL)removeWithId:(id)o {
  return [self removeFirstOccurrenceWithId:o];
}

- (void)clear {
  int h = head_;
  int t = tail_;
  if (h != t) {
    head_ = tail_ = 0;
    int i = h;
    int mask = (int) [((IOSObjectArray *) nil_chk(elements_)) count] - 1;
    do {
      [elements_ replaceObjectAtIndex:i withObject:nil];
      i = (i + 1) & mask;
    }
    while (i != t);
  }
}

- (IOSObjectArray *)toArray {
  return [self copyElementsWithNSObjectArray:[IOSObjectArray arrayWithLength:[self size] type:[IOSClass classWithClass:[NSObject class]]]];
}

- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)a {
  int size = [self size];
  if ((int) [((IOSObjectArray *) nil_chk(a)) count] < size) a = (IOSObjectArray *) [JavaLangReflectArray newInstanceWithIOSClass:[[a getClass] getComponentType] withInt:size];
  [self copyElementsWithNSObjectArray:a];
  if ((int) [((IOSObjectArray *) nil_chk(a)) count] > size) [a replaceObjectAtIndex:size withObject:nil];
  return a;
}

- (JavaUtilArrayDeque *)clone {
  @try {
    JavaUtilArrayDeque *result = (JavaUtilArrayDeque *) [super clone];
    JavaUtilArrayDeque_set_elements_(nil_chk(result), [JavaUtilArrays copyOfWithNSObjectArray:elements_ withInt:(int) [((IOSObjectArray *) nil_chk(elements_)) count]]);
    return result;
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw [[[JavaLangAssertionError alloc] init] autorelease];
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilArrayDeque_set_elements_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilArrayDeque *)other {
  [super copyAllFieldsTo:other];
  JavaUtilArrayDeque_set_elements_(other, elements_);
  other->head_ = head_;
  other->tail_ = tail_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elements_ name:@"elements"]];
  return result;
}

@end
@implementation JavaUtilArrayDeque_DeqIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasNext {
  return cursor_ != fence_;
}

- (id)next {
  if (cursor_ == fence_) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  id result = [((IOSObjectArray *) nil_chk(this$0_->elements_)) objectAtIndex:cursor_];
  if (this$0_->tail_ != fence_ || result == nil) @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  lastRet_ = cursor_;
  cursor_ = (cursor_ + 1) & ((int) [this$0_->elements_ count] - 1);
  return result;
}

- (void)remove {
  if (lastRet_ < 0) @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  if ([this$0_ delete__WithInt:lastRet_]) {
    cursor_ = (cursor_ - 1) & ((int) [((IOSObjectArray *) nil_chk(this$0_->elements_)) count] - 1);
    fence_ = this$0_->tail_;
  }
  lastRet_ = -1;
}

- (id)initWithJavaUtilArrayDeque:(JavaUtilArrayDeque *)outer$ {
  if ((self = [super init])) {
    JavaUtilArrayDeque_DeqIterator_set_this$0_(self, outer$);
    cursor_ = outer$->head_;
    fence_ = outer$->tail_;
    lastRet_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilArrayDeque_DeqIterator_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilArrayDeque_DeqIterator *)other {
  [super copyAllFieldsTo:other];
  other->cursor_ = cursor_;
  other->fence_ = fence_;
  other->lastRet_ = lastRet_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilArrayDeque_DescendingIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasNext {
  return cursor_ != fence_;
}

- (id)next {
  if (cursor_ == fence_) @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  cursor_ = (cursor_ - 1) & ((int) [((IOSObjectArray *) nil_chk(this$0_->elements_)) count] - 1);
  id result = [this$0_->elements_ objectAtIndex:cursor_];
  if (this$0_->head_ != fence_ || result == nil) @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  lastRet_ = cursor_;
  return result;
}

- (void)remove {
  if (lastRet_ < 0) @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  if (![this$0_ delete__WithInt:lastRet_]) {
    cursor_ = (cursor_ + 1) & ((int) [((IOSObjectArray *) nil_chk(this$0_->elements_)) count] - 1);
    fence_ = this$0_->head_;
  }
  lastRet_ = -1;
}

- (id)initWithJavaUtilArrayDeque:(JavaUtilArrayDeque *)outer$ {
  if ((self = [super init])) {
    JavaUtilArrayDeque_DescendingIterator_set_this$0_(self, outer$);
    cursor_ = outer$->tail_;
    fence_ = outer$->head_;
    lastRet_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilArrayDeque_DescendingIterator_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilArrayDeque_DescendingIterator *)other {
  [super copyAllFieldsTo:other];
  other->cursor_ = cursor_;
  other->fence_ = fence_;
  other->lastRet_ = lastRet_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
