//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/AbstractCollection.h"
#include "java/util/AbstractList.h"
#include "java/util/Collection.h"
#include "java/util/ConcurrentModificationException.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/ListIterator.h"
#include "java/util/NoSuchElementException.h"
#include "java/util/RandomAccess.h"

@implementation JavaUtilAbstractList_SimpleListIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (BOOL)hasNext {
  return numLeft_ > 0;
}

- (id)next {
  if (expectedModCount_ != this$0_->modCount_) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    int index = [this$0_ size] - numLeft_;
    id result = [this$0_ getWithInt:index];
    lastPosition_ = index;
    numLeft_--;
    return result;
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
}

- (void)remove {
  if (lastPosition_ == -1) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
  if (expectedModCount_ != this$0_->modCount_) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    if (lastPosition_ == [this$0_ size] - numLeft_) {
      numLeft_--;
    }
    [this$0_ removeWithInt:lastPosition_];
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  expectedModCount_ = this$0_->modCount_;
  lastPosition_ = -1;
}

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)outer$ {
  JavaUtilAbstractList_SimpleListIterator_set_this$0_(self, outer$);
  if (self = [super init]) {
    numLeft_ = [outer$ size];
    expectedModCount_ = outer$->modCount_;
    lastPosition_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilAbstractList_SimpleListIterator_set_this$0_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilAbstractList_SimpleListIterator *)other {
  [super copyAllFieldsTo:other];
  other->expectedModCount_ = expectedModCount_;
  other->lastPosition_ = lastPosition_;
  other->numLeft_ = numLeft_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
@implementation JavaUtilAbstractList_FullListIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)outer$
                           withInt:(int)start {
  JavaUtilAbstractList_FullListIterator_set_this$1_(self, outer$);
  if (self = [super initWithJavaUtilAbstractList:outer$]) {
    if (start < 0 || start > numLeft_) {
      @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
    }
    numLeft_ -= start;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithId:(id)object {
  if (expectedModCount_ != this$1_->modCount_) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    [this$1_ addWithInt:[this$1_ size] - numLeft_ withId:object];
    expectedModCount_ = this$1_->modCount_;
    lastPosition_ = -1;
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
}

- (BOOL)hasPrevious {
  return numLeft_ < [this$1_ size];
}

- (int)nextIndex {
  return [this$1_ size] - numLeft_;
}

- (id)previous {
  if (expectedModCount_ != this$1_->modCount_) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    int index = [this$1_ size] - numLeft_ - 1;
    id result = [this$1_ getWithInt:index];
    numLeft_++;
    lastPosition_ = index;
    return result;
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
}

- (int)previousIndex {
  return [this$1_ size] - numLeft_ - 1;
}

- (void)setWithId:(id)object {
  if (expectedModCount_ != this$1_->modCount_) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    [this$1_ setWithInt:lastPosition_ withId:object];
  }
  @catch (JavaLangIndexOutOfBoundsException *e) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilAbstractList_FullListIterator_set_this$1_(self, nil);
  [super dealloc];
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$1_ name:@"this$1"]];
  return result;
}

@end
@implementation JavaUtilAbstractList

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)addWithInt:(int)location
            withId:(id)object {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (BOOL)addWithId:(id)object {
  [self addWithInt:[self size] withId:object];
  return YES;
}

- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection {
  id<JavaUtilIterator> it = [((id<JavaUtilCollection>) nil_chk(collection)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
    [self addWithInt:location++ withId:[it next]];
  }
  return ![collection isEmpty];
}

- (void)clear {
  [self removeRangeWithInt:0 withInt:[self size]];
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object conformsToProtocol: @protocol(JavaUtilList)]) {
    id<JavaUtilList> list = (id<JavaUtilList>) check_protocol_cast(object, @protocol(JavaUtilList));
    if ([((id<JavaUtilList>) nil_chk(list)) size] != [self size]) {
      return NO;
    }
    id<JavaUtilIterator> it1 = [self iterator], it2 = [list iterator];
    while ([((id<JavaUtilIterator>) nil_chk(it1)) hasNext]) {
      id e1 = [it1 next], e2 = [((id<JavaUtilIterator>) nil_chk(it2)) next];
      if (!(e1 == nil ? e2 == nil : [e1 isEqual:e2])) {
        return NO;
      }
    }
    return YES;
  }
  return NO;
}

- (id)getWithInt:(int)location {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSUInteger)hash {
  int result = 1;
  id<JavaUtilIterator> it = [self iterator];
  while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
    id object = [it next];
    result = (31 * result) + (object == nil ? 0 : [object hash]);
  }
  return result;
}

- (int)indexOfWithId:(id)object {
  id<JavaUtilListIterator> it = [self listIterator];
  if (object != nil) {
    while ([((id<JavaUtilListIterator>) nil_chk(it)) hasNext]) {
      if ([object isEqual:[it next]]) {
        return [it previousIndex];
      }
    }
  }
  else {
    while ([((id<JavaUtilListIterator>) nil_chk(it)) hasNext]) {
      if ([it next] == nil) {
        return [it previousIndex];
      }
    }
  }
  return -1;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilAbstractList_SimpleListIterator alloc] initWithJavaUtilAbstractList:self] autorelease];
}

- (int)lastIndexOfWithId:(id)object {
  id<JavaUtilListIterator> it = [self listIteratorWithInt:[self size]];
  if (object != nil) {
    while ([((id<JavaUtilListIterator>) nil_chk(it)) hasPrevious]) {
      if ([object isEqual:[it previous]]) {
        return [it nextIndex];
      }
    }
  }
  else {
    while ([((id<JavaUtilListIterator>) nil_chk(it)) hasPrevious]) {
      if ([it previous] == nil) {
        return [it nextIndex];
      }
    }
  }
  return -1;
}

- (id<JavaUtilListIterator>)listIterator {
  return [self listIteratorWithInt:0];
}

- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location {
  return [[[JavaUtilAbstractList_FullListIterator alloc] initWithJavaUtilAbstractList:self withInt:location] autorelease];
}

- (id)removeWithInt:(int)location {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (void)removeRangeWithInt:(int)start
                   withInt:(int)end {
  id<JavaUtilIterator> it = [self listIteratorWithInt:start];
  for (int i = start; i < end; i++) {
    [((id<JavaUtilIterator>) nil_chk(it)) next];
    [it remove];
  }
}

- (id)setWithInt:(int)location
          withId:(id)object {
  @throw [[[JavaLangUnsupportedOperationException alloc] init] autorelease];
}

- (id<JavaUtilList>)subListWithInt:(int)start
                           withInt:(int)end {
  if (0 <= start && end <= [self size]) {
    if (start <= end) {
      if ([self conformsToProtocol: @protocol(JavaUtilRandomAccess)]) {
        return [[[JavaUtilAbstractList_SubAbstractListRandomAccess alloc] initWithJavaUtilAbstractList:self withInt:start withInt:end] autorelease];
      }
      return [[[JavaUtilAbstractList_SubAbstractList alloc] initWithJavaUtilAbstractList:self withInt:start withInt:end] autorelease];
    }
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
}

- (void)copyAllFieldsTo:(JavaUtilAbstractList *)other {
  [super copyAllFieldsTo:other];
  other->modCount_ = modCount_;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
@implementation JavaUtilAbstractList_SubAbstractList

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)list
                           withInt:(int)start
                           withInt:(int)end {
  if (self = [super init]) {
    JavaUtilAbstractList_SubAbstractList_set_fullList_(self, list);
    modCount_ = ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_;
    offset_ = start;
    size__ = end - start;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithInt:(int)location
            withId:(id)object {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location <= size__) {
      [fullList_ addWithInt:location + offset_ withId:object];
      size__++;
      modCount_ = fullList_->modCount_;
    }
    else {
      @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
    }
  }
  else {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
}

- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location <= size__) {
      BOOL result = [fullList_ addAllWithInt:location + offset_ withJavaUtilCollection:collection];
      if (result) {
        size__ += [((id<JavaUtilCollection>) nil_chk(collection)) size];
        modCount_ = fullList_->modCount_;
      }
      return result;
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    BOOL result = [fullList_ addAllWithInt:offset_ + size__ withJavaUtilCollection:collection];
    if (result) {
      size__ += [((id<JavaUtilCollection>) nil_chk(collection)) size];
      modCount_ = fullList_->modCount_;
    }
    return result;
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id)getWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location < size__) {
      return [fullList_ getWithInt:location + offset_];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id<JavaUtilIterator>)iterator {
  return [self listIteratorWithInt:0];
}

- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location <= size__) {
      return [[[JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator alloc] initWithJavaUtilListIterator:[fullList_ listIteratorWithInt:location + offset_] withJavaUtilAbstractList_SubAbstractList:self withInt:offset_ withInt:size__] autorelease];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id)removeWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location < size__) {
      id result = [fullList_ removeWithInt:location + offset_];
      size__--;
      modCount_ = fullList_->modCount_;
      return result;
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)removeRangeWithInt:(int)start
                   withInt:(int)end {
  if (start != end) {
    if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
      [fullList_ removeRangeWithInt:start + offset_ withInt:end + offset_];
      size__ -= end - start;
      modCount_ = fullList_->modCount_;
    }
    else {
      @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
    }
  }
}

- (id)setWithInt:(int)location
          withId:(id)object {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    if (0 <= location && location < size__) {
      return [fullList_ setWithInt:location + offset_ withId:object];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (int)size {
  if (modCount_ == ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_) {
    return size__;
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)sizeChangedWithBoolean:(BOOL)increment {
  if (increment) {
    size__++;
  }
  else {
    size__--;
  }
  modCount_ = ((JavaUtilAbstractList *) nil_chk(fullList_))->modCount_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilAbstractList_SubAbstractList_set_fullList_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilAbstractList_SubAbstractList *)other {
  [super copyAllFieldsTo:other];
  JavaUtilAbstractList_SubAbstractList_set_fullList_(other, fullList_);
  other->offset_ = offset_;
  other->size__ = size__;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:fullList_ name:@"fullList"]];
  return result;
}

@end
@implementation JavaUtilAbstractList_SubAbstractListRandomAccess

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)list
                           withInt:(int)start
                           withInt:(int)end {
  return JreMemDebugAdd([super initWithJavaUtilAbstractList:list withInt:start withInt:end]);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

@end
@implementation JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)initWithJavaUtilListIterator:(id<JavaUtilListIterator>)it
withJavaUtilAbstractList_SubAbstractList:(JavaUtilAbstractList_SubAbstractList *)list
                           withInt:(int)offset
                           withInt:(int)length {
  if (self = [super init]) {
    JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_iterator_(self, it);
    JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_subList_(self, list);
    start_ = offset;
    end_ = start_ + length;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithId:(id)object {
  [((id<JavaUtilListIterator>) nil_chk(iterator_)) addWithId:object];
  [((JavaUtilAbstractList_SubAbstractList *) nil_chk(subList_)) sizeChangedWithBoolean:YES];
  end_++;
}

- (BOOL)hasNext {
  return [((id<JavaUtilListIterator>) nil_chk(iterator_)) nextIndex] < end_;
}

- (BOOL)hasPrevious {
  return [((id<JavaUtilListIterator>) nil_chk(iterator_)) previousIndex] >= start_;
}

- (id)next {
  if ([((id<JavaUtilListIterator>) nil_chk(iterator_)) nextIndex] < end_) {
    return [iterator_ next];
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (int)nextIndex {
  return [((id<JavaUtilListIterator>) nil_chk(iterator_)) nextIndex] - start_;
}

- (id)previous {
  if ([((id<JavaUtilListIterator>) nil_chk(iterator_)) previousIndex] >= start_) {
    return [iterator_ previous];
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (int)previousIndex {
  int previous = [((id<JavaUtilListIterator>) nil_chk(iterator_)) previousIndex];
  if (previous >= start_) {
    return previous - start_;
  }
  return -1;
}

- (void)remove {
  [((id<JavaUtilListIterator>) nil_chk(iterator_)) remove];
  [((JavaUtilAbstractList_SubAbstractList *) nil_chk(subList_)) sizeChangedWithBoolean:NO];
  end_--;
}

- (void)setWithId:(id)object {
  [((id<JavaUtilListIterator>) nil_chk(iterator_)) setWithId:object];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_iterator_(self, nil);
  JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_subList_(self, nil);
  [super dealloc];
}

- (void)copyAllFieldsTo:(JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator *)other {
  [super copyAllFieldsTo:other];
  other->end_ = end_;
  JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_iterator_(other, iterator_);
  other->start_ = start_;
  JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator_set_subList_(other, subList_);
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:subList_ name:@"subList"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:iterator_ name:@"iterator"]];
  return result;
}

@end
