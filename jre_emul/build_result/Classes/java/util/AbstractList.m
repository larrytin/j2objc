//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/AbstractList.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/UnsupportedOperationException.h"
#import "java/util/AbstractCollection.h"
#import "java/util/AbstractList.h"
#import "java/util/Collection.h"
#import "java/util/ConcurrentModificationException.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "java/util/ListIterator.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/RandomAccess.h"

@implementation JavaUtilAbstractList_SimpleListIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractList *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilAbstractList *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
@synthesize numLeft = numLeft_;
@synthesize expectedModCount = expectedModCount_;
@synthesize lastPosition = lastPosition_;

- (BOOL)hasNext {
  return numLeft_ > 0;
}

- (id)next {
  if (expectedModCount_ != this$0_.modCount) {
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
  if (expectedModCount_ != this$0_.modCount) {
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
  expectedModCount_ = this$0_.modCount;
  lastPosition_ = -1;
}

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$0);
    numLeft_ = [this$0_ size];
    expectedModCount_ = this$0_.modCount;
    lastPosition_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractList_SimpleListIterator *typedCopy = (JavaUtilAbstractList_SimpleListIterator *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.numLeft = numLeft_;
  typedCopy.expectedModCount = expectedModCount_;
  typedCopy.lastPosition = lastPosition_;
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

- (JavaUtilAbstractList *)this$1 {
  return this$1_;
}
- (void)setThis$1:(JavaUtilAbstractList *)this$1 {
  JreOperatorRetainedAssign(&this$1_, this$1);
}
@synthesize this$1 = this$1_;

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)outer$1
                           withInt:(int)start {
  if ((self = [super initWithJavaUtilAbstractList:outer$1])) {
    JreOperatorRetainedAssign(&this$1_, outer$1);
    if (start < 0 || start > numLeft_) {
      @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
    }
    numLeft_ -= start;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithId:(id)object {
  if (expectedModCount_ != this$1_.modCount) {
    @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
  }
  @try {
    [this$1_ addWithInt:[this$1_ size] - numLeft_ withId:object];
    expectedModCount_ = this$1_.modCount;
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
  if (expectedModCount_ != this$1_.modCount) {
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
  if (expectedModCount_ != this$1_.modCount) {
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
  JreOperatorRetainedAssign(&this$1_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractList_FullListIterator *typedCopy = (JavaUtilAbstractList_FullListIterator *) copy;
  typedCopy.this$1 = this$1_;
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

@synthesize modCount = modCount_;

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
  id<JavaUtilIterator> it = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(collection)) iterator]);
  while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
    [self addWithInt:location++ withId:((id) [((id<JavaUtilIterator>) NIL_CHK(it)) next])];
  }
  return ![((id<JavaUtilCollection>) NIL_CHK(collection)) isEmpty];
}

- (void)clear {
  [self removeRangeWithInt:0 withInt:[self size]];
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object conformsToProtocol: @protocol(JavaUtilList)]) {
    id<JavaUtilList> list = (id<JavaUtilList>) object;
    if ([((id<JavaUtilList>) NIL_CHK(list)) size] != [self size]) {
      return NO;
    }
    id<JavaUtilIterator> it1 = [self iterator], it2 = [((id<JavaUtilList>) NIL_CHK(list)) iterator];
    while ([((id<JavaUtilIterator>) NIL_CHK(it1)) hasNext]) {
      id e1 = [((id<JavaUtilIterator>) NIL_CHK(it1)) next], e2 = [((id<JavaUtilIterator>) NIL_CHK(it2)) next];
      if (!(e1 == nil ? e2 == nil : [NIL_CHK(e1) isEqual:e2])) {
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
  while ([((id<JavaUtilIterator>) NIL_CHK(it)) hasNext]) {
    id object = [((id<JavaUtilIterator>) NIL_CHK(it)) next];
    result = (31 * result) + (object == nil ? 0 : [NIL_CHK(object) hash]);
  }
  return result;
}

- (int)indexOfWithId:(id)object {
  id<JavaUtilListIterator> it = [self listIterator];
  if (object != nil) {
    while ([((id<JavaUtilListIterator>) NIL_CHK(it)) hasNext]) {
      if ([object isEqual:[((id<JavaUtilListIterator>) NIL_CHK(it)) next]]) {
        return [((id<JavaUtilListIterator>) NIL_CHK(it)) previousIndex];
      }
    }
  }
  else {
    while ([((id<JavaUtilListIterator>) NIL_CHK(it)) hasNext]) {
      if ([((id<JavaUtilListIterator>) NIL_CHK(it)) next] == nil) {
        return [((id<JavaUtilListIterator>) NIL_CHK(it)) previousIndex];
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
    while ([((id<JavaUtilListIterator>) NIL_CHK(it)) hasPrevious]) {
      if ([object isEqual:[((id<JavaUtilListIterator>) NIL_CHK(it)) previous]]) {
        return [((id<JavaUtilListIterator>) NIL_CHK(it)) nextIndex];
      }
    }
  }
  else {
    while ([((id<JavaUtilListIterator>) NIL_CHK(it)) hasPrevious]) {
      if ([((id<JavaUtilListIterator>) NIL_CHK(it)) previous] == nil) {
        return [((id<JavaUtilListIterator>) NIL_CHK(it)) nextIndex];
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
    [((id<JavaUtilIterator>) NIL_CHK(it)) next];
    [((id<JavaUtilIterator>) NIL_CHK(it)) remove];
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

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractList *typedCopy = (JavaUtilAbstractList *) copy;
  typedCopy.modCount = modCount_;
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

- (JavaUtilAbstractList *)fullList {
  return fullList_;
}
- (void)setFullList:(JavaUtilAbstractList *)fullList {
  JreOperatorRetainedAssign(&fullList_, fullList);
}
@synthesize fullList = fullList_;
@synthesize offset = offset_;
@synthesize size_ = size__;

- (id)initWithJavaUtilAbstractList:(JavaUtilAbstractList *)list
                           withInt:(int)start
                           withInt:(int)end {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&fullList_, list);
    modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
    offset_ = start;
    size__ = end - start;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithInt:(int)location
            withId:(id)object {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location <= size__) {
      [((JavaUtilAbstractList *) NIL_CHK(fullList_)) addWithInt:location + offset_ withId:object];
      size__++;
      modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
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
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location <= size__) {
      BOOL result = [((JavaUtilAbstractList *) NIL_CHK(fullList_)) addAllWithInt:location + offset_ withJavaUtilCollection:collection];
      if (result) {
        size__ += [((id<JavaUtilCollection>) NIL_CHK(collection)) size];
        modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
      }
      return result;
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    BOOL result = [((JavaUtilAbstractList *) NIL_CHK(fullList_)) addAllWithInt:offset_ + size__ withJavaUtilCollection:collection];
    if (result) {
      size__ += [((id<JavaUtilCollection>) NIL_CHK(collection)) size];
      modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
    }
    return result;
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id)getWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location < size__) {
      return [((JavaUtilAbstractList *) NIL_CHK(fullList_)) getWithInt:location + offset_];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id<JavaUtilIterator>)iterator {
  return [self listIteratorWithInt:0];
}

- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location <= size__) {
      return [[[JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator alloc] initWithJavaUtilListIterator:((id<JavaUtilListIterator>) [((JavaUtilAbstractList *) NIL_CHK(fullList_)) listIteratorWithInt:location + offset_]) withJavaUtilAbstractList_SubAbstractList:self withInt:offset_ withInt:size__] autorelease];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (id)removeWithInt:(int)location {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location < size__) {
      id result = [((JavaUtilAbstractList *) NIL_CHK(fullList_)) removeWithInt:location + offset_];
      size__--;
      modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
      return result;
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)removeRangeWithInt:(int)start
                   withInt:(int)end {
  if (start != end) {
    if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
      [((JavaUtilAbstractList *) NIL_CHK(fullList_)) removeRangeWithInt:start + offset_ withInt:end + offset_];
      size__ -= end - start;
      modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
    }
    else {
      @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
    }
  }
}

- (id)setWithInt:(int)location
          withId:(id)object {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    if (0 <= location && location < size__) {
      return [((JavaUtilAbstractList *) NIL_CHK(fullList_)) setWithInt:location + offset_ withId:object];
    }
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (int)size {
  if (modCount_ == ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount) {
    return size__;
  }
  @throw [[[JavaUtilConcurrentModificationException alloc] init] autorelease];
}

- (void)sizeChangedWithBOOL:(BOOL)increment {
  if (increment) {
    size__++;
  }
  else {
    size__--;
  }
  modCount_ = ((JavaUtilAbstractList *) NIL_CHK(fullList_)).modCount;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&fullList_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractList_SubAbstractList *typedCopy = (JavaUtilAbstractList_SubAbstractList *) copy;
  typedCopy.fullList = fullList_;
  typedCopy.offset = offset_;
  typedCopy.size_ = size__;
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

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilAbstractList_SubAbstractList *)subList {
  return subList_;
}
- (void)setSubList:(JavaUtilAbstractList_SubAbstractList *)subList {
  JreOperatorRetainedAssign(&subList_, subList);
}
@synthesize subList = subList_;
- (id<JavaUtilListIterator>)iterator {
  return iterator_;
}
- (void)setIterator:(id<JavaUtilListIterator>)iterator {
  JreOperatorRetainedAssign(&iterator_, iterator);
}
@synthesize iterator = iterator_;
@synthesize start = start_;
@synthesize end = end_;

- (id)initWithJavaUtilListIterator:(id<JavaUtilListIterator>)it
withJavaUtilAbstractList_SubAbstractList:(JavaUtilAbstractList_SubAbstractList *)list
                           withInt:(int)offset
                           withInt:(int)length {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&iterator_, it);
    JreOperatorRetainedAssign(&subList_, list);
    start_ = offset;
    end_ = start_ + length;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)addWithId:(id)object {
  [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) addWithId:object];
  [((JavaUtilAbstractList_SubAbstractList *) NIL_CHK(subList_)) sizeChangedWithBOOL:YES];
  end_++;
}

- (BOOL)hasNext {
  return [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) nextIndex] < end_;
}

- (BOOL)hasPrevious {
  return [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) previousIndex] >= start_;
}

- (id)next {
  if ([((id<JavaUtilListIterator>) NIL_CHK(iterator_)) nextIndex] < end_) {
    return [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) next];
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (int)nextIndex {
  return [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) nextIndex] - start_;
}

- (id)previous {
  if ([((id<JavaUtilListIterator>) NIL_CHK(iterator_)) previousIndex] >= start_) {
    return [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) previous];
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (int)previousIndex {
  int previous = [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) previousIndex];
  if (previous >= start_) {
    return previous - start_;
  }
  return -1;
}

- (void)remove {
  [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) remove];
  [((JavaUtilAbstractList_SubAbstractList *) NIL_CHK(subList_)) sizeChangedWithBOOL:NO];
  end_--;
}

- (void)setWithId:(id)object {
  [((id<JavaUtilListIterator>) NIL_CHK(iterator_)) setWithId:object];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&iterator_, nil);
  JreOperatorRetainedAssign(&subList_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator *typedCopy = (JavaUtilAbstractList_SubAbstractList_SubAbstractListIterator *) copy;
  typedCopy.subList = subList_;
  typedCopy.iterator = iterator_;
  typedCopy.start = start_;
  typedCopy.end = end_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:subList_ name:@"subList"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:iterator_ name:@"iterator"]];
  return result;
}

@end
